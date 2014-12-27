class PawsController < ApplicationController

	def create
		@photo = Photo.find(params[:photo_id])
		@photo.paws.create
		render json: {new_paw_count: @photo.paws.count}
	end


end
