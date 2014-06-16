class PicturesController < ApplicationController

	def index
	end

	def show
		@pictures = Pictures.find(params[:id])
	end

	def new
	end

	def create
	end
end


