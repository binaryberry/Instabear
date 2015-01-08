class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def create
		photo = Photo.create(params[:photo].permit(:caption, :image))
		redirect_to photos_path
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def update
		@photo = Photo.find(params[:id])
		@photo.update(params[:photo].permit(:caption, :image))
		redirect_to photos_path
	end

	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy
		flash[:notice] = 'Post deleted successfully'
		redirect_to photos_path

	end

	def show
		@photo = Photo.find(params[:id])
	end

end