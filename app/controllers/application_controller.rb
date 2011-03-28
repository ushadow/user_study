class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authenticate
    authenticate_or_request_with_http_basic do |id, password|
      id == "yingyin" && password == "isawesome"
    end
  end
  private :authenticate  
end
