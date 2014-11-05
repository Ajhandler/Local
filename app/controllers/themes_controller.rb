class ThemesController < ApplicationController
	def index
	end

	def new
		@theme = Theme.new
	end
	def create
		@theme = Theme.new(theme_params)
		@theme.save
		redirect_to companies_path
	end

	private

	def theme_params 
	params.require(:theme).permit(:theme_name)
	end


end
