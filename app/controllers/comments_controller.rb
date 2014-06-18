class CommentsController < ApplicationController
	def create
		@comment = Comment.create(comment_params)

		if @comment.save
			redirect_to "/pictures/#{@comment.picture_id}"
		else
			flash[:notice] = "Error"
			redirect_to "/pictures/#{@comment.picture_id}"
		end
	end

		def detroy
			@comment = Comment.find(params[:id])
			@picture = @comment.picture_id
			@comment.detroy

			redirect_to "/picture/#{@picture}"
		end

		private

		def comment_params
			params.require(:comment).permit(:text, :user_id, :picture_id)
		end
end
