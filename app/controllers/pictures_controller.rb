class PicturesController < ApplicationController

	def index
	end

	def show
			@pictures = [{
				:title => "Europe",
				:artist => "Josh Cornelius",
				:url => '019.JPG'
			},
			{
				:title => "Europe Again!",
				:artist => "Josh Cornelius",
				:url => '031.JPG'
			},
			{
				:title => "Europe one more time!",
				:artist => "Josh Cornelius",
				:url => '316.JPG'
			}
		]

		@pictures = @pictures[params[:id].to_i]
	end

	def new
	end

	def create

	end
end


