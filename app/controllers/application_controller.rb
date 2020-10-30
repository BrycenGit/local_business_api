class ApplicationController < ActionController::API
  include Response
  include Rescue 
  
  def restrict_access
    api_key = ApiKey.find_by_access_token(params[:api_key])
    json_response({ message: "you are not authorized, wheres your api key???" }, :unauthorized) unless api_key
  end
end
