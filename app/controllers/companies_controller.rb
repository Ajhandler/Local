class CompaniesController < ApplicationController

	before_action :authenticate_user!, only: [:index]
	before_action :set_company, only: [:destory]

	def index
		@company = current_user.company
	end

	def show

	end

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(company_params) 
		@company.user = User.find(current_user.id)
		@company.save
  		redirect_to templates_path notice: "New Page Created!"
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

	def company_params
		params.require(:company).permit( :company, :tagline, :address1, :address2, :city, :state, :zipcode, :phone, :fax, :email, :about, :hours, :years_establisted, :facebook, :twitter, :tumblr, :linkedin, :package_id, :template_id, :user_id, :subdomain)
	end
end