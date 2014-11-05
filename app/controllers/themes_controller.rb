class ThemesController < ApplicationController
	def index
	end

	def new
		@theme = Theme.new
	end
	def create
		@theme = Theme.new(theme_params)
		@theme.save
		@update_theme = current_user.company.update(theme_id: @theme.id)
		redirect_to companies_path
	end

	private

	def theme_params 
	params.require(:theme).permit(:theme_name, :theme_id)
	end


end
