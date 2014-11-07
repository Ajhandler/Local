class UsersController < ApplicationController

	def index
    @users = User.all
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