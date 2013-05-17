class SessionsController < ApplicationController
  skip_before_filter :ensure_current_user

  def new
  end

  def create
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in."
  end

  def destroy
    session[:user_id] = nil
    current_user = nil
    redirect_to root_url, notice: "Signed out."
  end
end
