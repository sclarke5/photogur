class PicturesController < ApplicationController
  before_action :ensure_logged_in, except: [:show, :index]
  # before_action :ensure_owns_picture, except: [:show, :index]
  # before_action :show, only: [:show, :edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new

    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]
    @picture.user_id = session[:user_id]

    if @picture.save
      redirect_to "/pictures"
      # if the picture gets saved, generate a get request to "/pictures" (the index)
    else
      # otherwise render new.html.erb
      render :new
    end
  end

end
