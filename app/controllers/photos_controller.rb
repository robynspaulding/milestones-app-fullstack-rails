class PhotosController < ApplicationController

  def index
    @photos = Photo.all 
    render template: "photos/index"
  end

  
end
