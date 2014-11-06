class CompaniesController < ApplicationController
	before_action :authenticate_user!, only: [:index]

	before_action :set_company, only: [:destroy, :show, :update]

	def index
		@company = current_user.company
	end

	def show
	@theme = @company.theme.theme_name
	end

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(company_params) 
		@company.user = User.find(current_user.id)
		@company.save
  		redirect_to new_theme_path notice: "New Page Created!"
	end

	def update
		if @company.update(company_params)
	  		respond_to do |format|
	  			format.html { redirect_to @company.project, notice: 'Site successfully updated.' }
	      		format.json { respond_with_bip(@company) }
	  		end
	  	else
	  		respond_to do |format|
	  			format.html { redirect_to @company.project, notice: 'Something went wrong.' }
	      		format.json { respond_with_bip(@company) }
	  		end
	  	end
	end

	def destroy

		if @company.destroy
			flash[:notice] = "Site Deleted!"
			redirect_to "/users/:id"
		else
			flash[:notice] = "Could not delete. Sorry."
			redirect_to "/users/:id"
		end
	end

	private

	def set_company
		if params[:id].length < 3
			@company = Company.find(params[:id])
		else
			@company = Company.find_by_subdomain(params[:id])
		end
	end
	
	def company_params
		params.require(:company).permit( :company, :tagline, :address1, :address2, :city, :state, :zipcode, :phone, :fax, :email, :about, :hours, :year_established, :facebook, :twitter, :tumblr, :linkedin, :package_id, :template_id, :user_id, :subdomain, :logo)
	end
end