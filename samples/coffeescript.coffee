# Scroll handling is expensive, hence use a timer to handle infinite page
# scrolling.
#

App.scrolledWithComments = false
App.commentsShowMore = null
App.$commentsElement = null # Cache the appendable comments element.

class App.CommentsShowMore
  constructor: ->
    @interval = null

  startInterval: =>
    @interval = setInterval(@scrollForMoreComments, 200)

  endInterval: =>
    clearInterval(@interval)

  scrollForMoreComments: =>
    return unless App.scrolledWithComments
    App.scrolledWithComments = false
    if $(window).scrollTop() + window.innerHeight >= $(document).height() - 5
      # The user has scrolled to the bottom of the page.
      @showMoreComments()

  showMoreComments: =>
    @endInterval()
    if App.$commentsElement.length
      commentsUrl = App.$commentsElement.data("comments-url")
      currentPage = Number(App.$commentsElement.attr("data-current-page"))
      totalPages  = App.$commentsElement.data("total-pages")
      if currentPage < totalPages
        $("[data-behavior~=comments-spinner]").show()
        $.ajax(
          url: "#{commentsUrl}?page=#{currentPage + 1}",
          method: "GET",
          dataType: "html",
          success: @appendComments)

  appendComments: (comments) =>
    $("[data-behavior~=comments]").append(comments)
    currentPage = Number(App.$commentsElement.attr("data-current-page"))
    App.$commentsElement.attr("data-current-page", currentPage + 1)
    $("[data-behavior~=comments-spinner]").hide()
    @startInterval()

# Enable and disable scroll handling dependent on whether the page has
# scrollable comments and do it even when Turbolinks navigation is in effect.
#
# The scroll event triggers very often, so only enable it for pages that need
# it.
$(document).on "turbolinks:load", ->
  App.commentsShowMore = new App.CommentsShowMore() unless App.commentsShowMore
  App.commentsShowMore.endInterval()

  $(window).off "scroll"
  App.scrolledWithComments = false
  App.$commentsElement = $("[data-behavior~=show-more-comments]")

  if App.$commentsElement.length
    $(window).on "scroll", ->
      App.scrolledWithComments = true
    App.commentsShowMore.startInterval()
