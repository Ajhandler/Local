class TemplatesController < ApplicationController
	def index

	end

	def new
		@template = Template.new
	end
	
	def create
		@template = Template.new(template_params)
		@template.save
	end

	private

	def template_params 
		params.require(:template).permit(:template_name)
	end
end