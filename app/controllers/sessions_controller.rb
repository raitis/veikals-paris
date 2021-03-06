require 'bcrypt'

class SessionsController < ApplicationController
  layout 'login'
  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to admin_url
  	else
  		redirect_to login_url
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url
  end
end
