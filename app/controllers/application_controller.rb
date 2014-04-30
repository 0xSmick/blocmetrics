class ApplicationController < ActionController::Base
  before_filter :allow_cors
  include Pundit

  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to root_url, alert: exception.message

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  end



def allow_cors
  headers["Access-Control-Allow-Origin"] = "*"
  headers["Access-Control-Allow-Methods"] = "POST, GET, OPTIONS"
  headers["Access-Control-Allow-Headers"] = "Content-Type"
  headers["Access-Control-Max-Age"] = "1728000"
end

  #protect_from_forgery with: :exception 
end
