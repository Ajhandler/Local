class CompaniesController < ApplicationController

	before_action :authenticate_user!, only: [:index]
	before_action :set_company, only: [:destory]

	def index

	end

	def show

	end

	def new
		@company = Company.new
	end

	def create
		@company = Company.create(title: "New Page", user_id: current_user.id)
  		redirect_to company_index_path, notice: "New Page Created!"
	end

	def update
		
	end

	def destroy
		if @company.destroy
			flash[:notice] = "Site Deleted!"
			#redirect_to root_path
		else
			flash[:notice] = "Could not delete. Sorry."
			#redirect_to root_path
		end
	end

	private

	def set_company
			@company = Company.find(params[:id])
	end
end