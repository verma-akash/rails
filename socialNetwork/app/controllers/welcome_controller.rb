class WelcomeController < ApplicationController
  
	def index
		@users = User.where(nil)
	
		if params[:search]
			@users = User.search(params[:search]).order("created_at DESC")
		else
			@users = User.where(nil)
		end
	end
end
