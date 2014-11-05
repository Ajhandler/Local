class ThemesController < ApplicationController
	def index
	end

	def new
		@themes = Theme.new
	end
	def create
		@theme = Theme.new(theme_params)
		@theme.save
	end

	private

	def theme_params 
	params.require(:theme).permit(:theme_name)
	end


end