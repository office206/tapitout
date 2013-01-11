class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
  	User.find_by_token(params[:token])
  end

  def signed_in?
  	current_user != nil
  end
end