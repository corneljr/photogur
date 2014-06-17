class PagesController < ApplicationController

	def home
		if user_signed_in?
			redirect_to pictures_url
		else 
		end
	end
	
end
