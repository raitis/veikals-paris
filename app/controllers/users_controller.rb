class UsersController < ApplicationController
  if User.count.zero?

  else
    before_filter :authorize?
  end
  layout 'admin'

  def index
    @users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to admin_users_path
  	else
  		render "new"
  	end
  end

  def destroy
     @user = User.find(params[:id])
     @user.destroy
     redirect_to admin_users_path
  end
  
end
