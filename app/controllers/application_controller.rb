class ApplicationController < ActionController::Base
  
  protect_from_forgery
  helper_method :current_user, :assert_logged_in
  
  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def assert_logged_in
    unless current_user
      redirect_to root_url, :notice => "Not Logged In"
    end
  end
end
