require 'appengine-rack'
AppEngine::Rack.configure_app(
  :application => 'richard-rails-test',
  :sessions_enabled => true,
  :version => 1)

AppEngine::Rack.app.resource_files.exclude :rails_excludes
ENV['RAILS_ENV'] = AppEngine::Rack.environment
require 'config/environment'
run ActionController::Dispatcher.new
