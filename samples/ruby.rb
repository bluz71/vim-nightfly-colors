# frozen_string_literal: true

require "pry"

module AlbumsHelper
  VALID_WEBSITE_RE = %r{\Ahttps?://[\w\d\-.]*\z}.freeze

  def genre_select(album)
    album.genre.present? ? album.genre.id : Genre.find_by(name: "Rock").id
  end

  def filter_visibility
    "hidden" unless params.key?("filter") && params["filter"] == "true"
  end
end

class AlbumsController < ApplicationController
  before_action :require_admin, except: [:index, :show]
  before_action :set_artist, only: [:new, :create, :update]
  before_action :set_album, only: [:show, :edit, :destroy]

  def index
    @albums = Album.list(params)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @artist        = @album.artist
    @tracks        = @album.tracks
    @tracks_count  = @album.tracks_count
    @comments      = @album.comments.list.page
    @comments_path = request.path + "/comments"
    respond_to do |format|
      format.html
      format.json
    end
  end

  def new
    @album = @artist.albums.new
    @back_link = artist_path(@artist)
  end

  def create
    @album = @artist.albums.new(album_params)
    if @album.save
      flash[:notice] = "#{@album.title} has been created"
      redirect_to [@artist, @album]
    else
      flash.now[:alert] = "Album could not be created"
      @back_link = artist_path(@artist)
      render "new"
    end
  end

  def edit
    @artist = @album.artist
    @back_link = request.referer || artist_path(@artist)
  end

  def update
    @album = @artist.albums.friendly.find(params[:id])
    @album.slug = nil
    if @album.update(album_params)
      flash[:notice] = "#{@album.title} has been updated"
      redirect_to [@artist, @album]
    else
      flash.now[:alert] = "Album could not be updated"
      @back_link = artist_path(@artist)
      render "edit"
    end
  end

  def destroy
    artist = @album.artist
    @album.destroy!
    @albums_count = artist.albums_count
    respond_to do |format|
      format.html do
        flash[:notice] = "#{@album.title} has been removed"
        redirect_to artist_path(artist)
      end
      format.js
    end
  end

  private

  def set_artist
    @artist = Artist.friendly.find(params[:artist_id])
  end

  def set_album
    @album = Album.friendly.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    if request.format.html?
      flash[:alert] = "The album '#{params[:id]}' does not exist"
      redirect_to albums_path
    else # JSON end-point
      head :not_found
    end
  end

  def album_params
    params.require(:album).permit(:title, :genre_id, :year, :track_list,
                                  :cover, :cover_cache)
  end
end
