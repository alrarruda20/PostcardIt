class PhotosController < ApplicationController
  def my_photos
    @photos = current_user.photos
  end

  def my_timeline
    @photos = current_user.timeline_photos
  end

  def index
    @photos = Photo.order("created_at DESC")
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.title = params[:title]
    @photo.description = params[:description]
    @photo.location = params[:location]
    @photo.user_id = params[:user_id]
    @photo.image = params[:image]
    @photo.taken_at = params[:taken_at]

    if @photo.save
      redirect_to "/photos", :notice => "Photo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])

    @photo.title = params[:title]
    @photo.description = params[:description]
    @photo.location = params[:location]
    @photo.user_id = params[:user_id]
    @photo.image = params[:image]
    @photo.taken_at = params[:taken_at]

    if @photo.save
      redirect_to "/photos", :notice => "Photo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])

    @photo.destroy

    redirect_to "/photos", :notice => "Photo deleted."
  end
end
