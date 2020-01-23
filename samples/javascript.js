import React, { Component } from 'react'
import { Link, Redirect } from 'react-router-dom'
import { Row, Col, PageHeader, Table, Button } from 'react-bootstrap'
import FontAwesome from 'react-fontawesome'
import axios from 'axios'
import numeral from 'numeral'
import pluralize from 'pluralize'
import { API_HOST } from '../config'
import PageProgress from '../helpers/PageProgress'
import infiniteScroll from '../helpers/infiniteScroll'
import { toastAlert } from '../helpers/toastMessage'
import { appAuth } from '../lib/appAuth'
import CommentsList from './CommentsList'
import NewComment from './NewComment'
import '../styles/AlbumShowPage.css'

class AlbumShowPage extends Component {
  constructor (props) {
    super(props)

    this.artistSlug = props.match.params.artist_id
    this.albumSlug = props.match.params.album_id
    this.albumEndPoint = `${API_HOST}/${this.artistSlug}/${this.albumSlug}.json`
    this.showingAllTracks = false
    this.scrollLessTracks = false
    this.loaded = false
    this.commentsEndPoint = `${API_HOST}/${this.artistSlug}/${
      this.albumSlug
    }/comments.json`
    this.waiting = false // For comments when infinite-scrolling.
    this.scrollToComments =
      (props.location.state && props.location.state.scrollToComments) || false
    this.pageProgress = new PageProgress()

    // Note, use a Map for comments since it preserves insertion order whilst
    // allowing O(1) comment deletion.
    this.state = {
      album: {},
      tracks: [],
      comments: new Map(),
      commentsPagination: {},
      commentsCount: 0,
      notFound: false,
      error: null
    }

    // Bind 'this' for callback functions.
    this.handleTracksVisibility = this.handleTracksVisibility.bind(this)
    this.handleScroll = this.handleScroll.bind(this)
    this.handlePageEnd = this.handlePageEnd.bind(this)
    this.handleDeleteComment = this.handleDeleteComment.bind(this)
    this.handleNewComment = this.handleNewComment.bind(this)
  }

  componentDidMount () {
    window.onscroll = this.handleScroll
    this.getAlbum(true)
  }

  componentWillUnmount () {
    window.onscroll = null
  }

  componentDidUpdate () {
    if (this.scrollLessTracks) {
      this.scrollLessTracks = false
      this.tracksAnchor.scrollIntoView(false)
    }
  }

  handleScroll () {
    infiniteScroll(this.state.commentsPagination, this.handlePageEnd)
  }

  handlePageEnd () {
    // Page has been scrolled to the end, hence retrieve the next set of
    // comments.

    // Disable scroll handling whilst records are being retrieved.
    window.onscroll = null
    const commentsPageEndPoint = `${this.commentsEndPoint}?page=${
      this.state.commentsPagination.next_page
    }`
    this.waiting = true
    this.forceUpdate() // Render spinner
    this.getComments(commentsPageEndPoint)
  }

  handleYear (year) {
    const params = { year }
    this.props.history.push('/albums', params)
  }

  handleGenre (genre) {
    const params = { genre }
    this.props.history.push('/albums', params)
  }

  handleTracksVisibility () {
    this.showingAllTracks = !this.showingAllTracks
    if (!this.showingAllTracks) {
      this.scrollLessTracks = true
    }
    this.forceUpdate()
  }

  handleDeleteComment (commentId) {
    // Note, we need to copy the comments hash map since we must not mutate
    // React state directly.
    const comments = new Map([...this.state.comments])
    // Delete the comment of interest.
    comments.delete(commentId)
    // Update the count.
    const commentsCount = this.state.commentsCount - 1
    // Apply the updated state.
    this.setState({ comments, commentsCount })
  }

  handleNewComment (comment) {
    // Note, we need to copy the comments hash map since we must not mutate
    // React state directly.
    //
    // Prepend the comment of interest.
    const comments = new Map([
      ...[[comment.id, comment]],
      ...this.state.comments
    ])
    // Update the count.
    const commentsCount = this.state.commentsCount + 1
    // Apply the updated state.
    this.setState({ comments, commentsCount })
  }

  getAlbum (scrollToTop = false) {
    axios
      .get(this.albumEndPoint)
      .then(response => {
        this.loaded = this.pageProgress.done()
        document.title = response.data.album.title
        this.setState({
          album: response.data.album,
          tracks: response.data.tracks,
          comments: new Map(response.data.comments.map(c => [c.id, c])),
          commentsPagination: response.data.comments_pagination,
          commentsCount: response.data.comments_pagination.total_count
        })
        if (this.scrollToComments) {
          this.scrollToComments = false
          this.commentsAnchor.scrollIntoView()
        } else if (scrollToTop) {
          window.scrollTo(0, 0)
        }
      })
      .catch(error => {
        this.pageProgress.done()
        if (error.response && error.response.status === 404) {
          this.setState({ notFound: true })
        } else {
          this.setState({ error: error })
        }
      })
  }

  getComments (commentsEndPoint) {
    axios
      .get(commentsEndPoint)
      .then(response => {
        this.waiting = false
        if (!window.onscroll) {
          // Re-enable scroll handling now that the records have been
          // retrieved.
          window.onscroll = this.handleScroll
        }
        this.setState({
          comments: new Map([
            ...this.state.comments,
            ...response.data.comments.map(c => [c.id, c])
          ]),
          commentsPagination: response.data.pagination
        })
      })
      .catch(error => {
        this.setState({ error: error })
      })
  }

  albumRetrieved () {
    if (!this.loaded || this.state.notFound || this.state.error) {
      return false
    } else {
      return true
    }
  }

  renderHeader () {
    const albumTitle = this.state.album.title
    const artistName = this.state.album.artist_name

    return (
      <Col md={10} mdOffset={1}>
        <PageHeader>
          {albumTitle}{' '}
          <small>
            by <Link to={`/artist/${this.artistSlug}`}>{artistName}</Link>
          </small>
        </PageHeader>
      </Col>
    )
  }

  renderCover () {
    const { album } = this.state

    return (
      <Col md={4} mdOffset={1} className='large-cover'>
        <img
          className='img-responsive center-block'
          src={album.cover_url}
          alt={album.title}
        />
      </Col>
    )
  }

  trackVisibilityVal (track) {
    if (track.number <= 20 || this.showingAllTracks) {
      return 'visible'
    } else {
      return 'invisible'
    }
  }

  renderTracks (tracks) {
    return tracks.map(track => {
      return (
        <tr key={track.id} className={this.trackVisibilityVal(track)}>
          <td>{track.number}.</td>
          <td>{track.title}</td>
          <td>{track.duration}</td>
        </tr>
      )
    })
  }

  renderTracksVisibility () {
    const { tracks } = this.state

    if (tracks.length <= 20) {
      return
    }

    const btnText = this.showingAllTracks
      ? 'Show less tracks'
      : 'Show all tracks'

    return (
      <div ref={tracksAnchor => (this.tracksAnchor = tracksAnchor)}>
        {!this.showingAllTracks && <div className='tracks-gradient' />}
        <Button
          bsSize='small'
          className={this.showingAllTracks ? 'tracks-less' : 'tracks-more'}
          onClick={this.handleTracksVisibility}
        >
          {btnText}
        </Button>
      </div>
    )
  }

  renderAlbum () {
    const { album, tracks } = this.state

    return (
      <Col md={6} className='album-data'>
        <h2>
          {album.tracks_count} Tracks{' '}
          <small>(Time {album.total_duration})</small>
        </h2>
        <span className='icon'>
          <span className='filter' onClick={() => this.handleYear(album.year)}>
            <FontAwesome name='calendar' /> {album.year}
          </span>
          <span
            className='filter'
            onClick={() => this.handleGenre(album.genre)}
          >
            <FontAwesome name='tag' className='spacer-left-xs' /> {album.genre}
          </span>
        </span>
        <Table striped>
          <thead>
            <tr>
              <th>No.</th>
              <th>Title</th>
              <th>Duration</th>
            </tr>
          </thead>
          <tbody>{this.renderTracks(tracks)}</tbody>
        </Table>
        {this.renderTracksVisibility()}
      </Col>
    )
  }

  renderNewComment () {
    if (!appAuth.isLoggedIn()) {
      return
    }

    return (
      <NewComment
        resourcePath={`${this.artistSlug}/${this.albumSlug}`}
        onNewComment={this.handleNewComment}
      />
    )
  }

  renderCommentsList (count) {
    if (count === 0) {
      return <h4>No comments have been posted for this album</h4>
    }

    return (
      <CommentsList
        comments={this.state.comments}
        onDeleteComment={this.handleDeleteComment}
        shortHeader
      />
    )
  }

  renderSpinner () {
    if (this.waiting) {
      return (
        <div className='WaitingSpinner'>
          <FontAwesome name='spinner' spin pulse />
        </div>
      )
    }
  }

  renderComments () {
    const count = this.state.commentsCount
    const commentsCount = numeral(count).format('0,0')

    return (
      <Col md={10} mdOffset={1} className='comments'>
        <div ref={commentsAnchor => (this.commentsAnchor = commentsAnchor)}>
          <PageHeader>
            Comments{' '}
            <small>
              ({commentsCount} {pluralize('Comment', count)})
            </small>
          </PageHeader>
        </div>
        {this.renderNewComment()}
        {this.renderCommentsList(count)}
        {this.renderSpinner()}
      </Col>
    )
  }

  render () {
    this.pageProgress.start()

    if (this.state.notFound) {
      toastAlert(`The album ${this.albumSlug} does not exist`)
      return <Redirect to='/albums' />
    }
    if (this.state.error) {
      toastAlert('Connection failure, please retry again soon')
      return <Redirect to='/' />
    }

    if (!this.albumRetrieved()) {
      return null
    }

    return (
      <Row>
        <div className='AlbumShow'>
          {this.renderHeader()}
          {this.renderCover()}
          {this.renderAlbum()}
          {this.renderComments()}
        </div>
      </Row>
    )
  }
}

export default AlbumShowPage
