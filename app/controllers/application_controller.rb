class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  rescue_from AccessDenied, :with => :access_denied

  protect_from_forgery with: :exception

  def access_denied
  	redirect_to "/401.html"
  end
end
