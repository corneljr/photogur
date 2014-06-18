class PicturesController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find(params[:id])
		@comments = @picture.comments.all
		@comment = Comment.new

		@score = 0
		@picture.votes.each do |vote|
			@score += vote.polarity
		end
	end

	def new
		@picture = current_user.pictures.new
	end

	def edit
		@picture = Picture.find(params[:id])
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

	def update
		Picture.find(params[:id]).update_attributes(picture_params)
		redirect_to pictures_mypictures_url
	end

	def mypictures
		@pictures = current_user.pictures
	end

	def destroy
		Picture.find(params[:id]).destroy
		redirect_to pictures_url
	end

	def upvote
		@picture = Picture.find(params[:id])
		@vote = Vote.create(:polarity => 1, :user_id => current_user.id, :picture_id => @picture.id)
		@vote.save
		redirect_to "/pictures/#{@picture.id}"
	end

	def downvote
		@picture = Picture.find(params[:id])
		@vote = Vote.create(:polarity => -1, :user_id => current_user.id, :picture_id => @picture.id)
		@vote.save
		redirect_to "/pictures/#{@picture.id}"
	end

	private
	def picture_params
		params.require(:picture).permit(:title,:url)
	end
end


