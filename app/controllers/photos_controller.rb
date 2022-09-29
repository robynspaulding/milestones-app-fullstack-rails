class PhotosController < ApplicationController

  def index
    @photos = Photo.all 
    render template: "photos/index"
  end

  def show
    @photo = Photo.find_by(id: params[:id])
    render template: "photos/show"
  end

  def new
    @photo = Photo.new
    render template: "photos/new"
  end
  
  def new
    @photo = Photo.new
    render template: "photos/new"
  end
  
  def create
    @photo = Photo.new(
      image_url: params[:photo][:image_url],
      description: params[:photo][:description],
      date: params[:photo][:date],
      kid_id: params[:photo][:kid_id],
    )
    @photo.save
    redirect_to "/photos"
  end

  def edit
    @photo = Photo.find_by(id: params[:id])
    render template: "photos/edit"
  end

  def update
    @photo = Photo.find_by(id: params[:id])
    @photo.image_url = params[:photo][:image_url]
    @photo.description = params[:photo][:description]
    @photo.date = params[:photo][:date]
    @photo.save
    redirect_to "/photos"
  end

  def destroy
    @photo = Photo.find_by(id: params[:id])
    @photo.destroy
    redirect_to "/photos", status: :see_other
  end

end
