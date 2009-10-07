# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def login_path
    AppEngine::Users.create_login_url(request.request_uri)
  end
  
  def logout_path
    AppEngine::Users.create_logout_url(request.request_uri)
  end
end
