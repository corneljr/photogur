class PicturesController < ApplicationController
	before_action :correct_user, only: [:edit, :update, :detroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find(params[:id])
	end

	def new
		@picture = current_user.pictures.new
	end

	def create
		@picture = Picture.new(picture_params)
		@picture.user_id = current_user.id

		if @picture.save
			redirect_to pictures_url
		else
			render :new
		end
	end

	def destroy
		Picture.find(params[:id]).destroy
		redirect_to pictures_url
	end

	private
	def picture_params
		params.require(:picture).permit(:title,:url)
	end
end


