class Rails::InfoController < ActionController::Base
  def properties
    info = [['Ruby version', "#{RUBY_VERSION} (#{RUBY_PLATFORM})"],
            ['RubyGems version', Gem::RubyGemsVersion],
            ['Rack version', Rack.release], 
            ['Rails version', Rails::VERSION::STRING]]
    info << ['DataMapper version', DataMapper::VERSION ] if defined?(DataMapper)
    # get version from rails frameworks 
    frameworks = %w{action_pack active_resource action_mailer active_support}
    frameworks.unshift('active_record') if  defined?(ActiveRecord)
    frameworks.each do |f|
      require "#{f}/version"
      info << [ "#{f.titlecase} version",
                "#{f.classify}::VERSION::STRING".constantize ]
    end
    info << ['Environment', RAILS_ENV ]
    # get versions from jruby and appengine
    if defined?(JRuby::Rack::VERSION)
      require 'appengine-apis' # for VERSION
      env = AppEngine::ApiProxy.current_environment
      ver = env.getVersionId[0,env.getVersionId.rindex(".")] 
      info << ['JRuby version', JRUBY_VERSION ]
      info << ['JRuby-Rack version', JRuby::Rack::VERSION ]
      info << ['AppEngine APIs version', AppEngine::VERSION ]
      info << ['Auth domain', env.getAuthDomain ]
      info << ['Application id:version', env.getAppId + ":#{ver}" ]
    end
    html = "<table><tbody>"
    info.each { |k,v| html += "<tr><td>#{k}</td><td>#{v}</td></tr>" }
    html += "</tbody></table>"
    render :text => html
  end
end

