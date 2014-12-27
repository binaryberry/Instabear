class PawsController < ApplicationController

	def create
		@photo = Photo.find(params[:photo_id])
		@photo.paws.create
		redirect_to photos_path
	end


end
