class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :ensure_current_user, except: [:show, :index]

  private

  def ensure_current_user
    redirect_to(sessions_new_url, notice: "You muse be signed in to create content.") unless current_user
  end
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
