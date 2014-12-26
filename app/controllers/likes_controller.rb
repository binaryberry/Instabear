class LikesController < ApplicationController

	def create
		@comment = Comment.find(params[:comment_id])
		@comment.likes.create
		redirect_to photos_path
	end

end
