class UsersController < ApplicationController

<<<<<<< HEAD
	def show

=======
	def index
    @users = User.all
>>>>>>> dev
	end

  private
  def set_company
    if params[:id].length < 3
      @company = Company.find(params[:id])
    else
      @company = Company.find_by_subdomain(params[:id])
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

end