class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
  
  protected
  def current_user
    @user ||= User.find(session[:user])
  end

  private
  def authenticate
    session[:user] = User.find(2) if session[:user].nil?
  end
end
