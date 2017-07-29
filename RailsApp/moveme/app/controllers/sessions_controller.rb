class SessionsController < ApplicationController
  def new
  	user = User.from_omniauth(env["omniauth.auth"])
  	session[:user_id] = user.id
  	redirect_to root_url
  end

  def create

  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url
  end

end
