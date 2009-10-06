# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{appengine-rack}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Brown"]
  s.date = %q{2009-09-03}
  s.description = %q{Commom dependencies for configuring an App Engine application via Rack.
}
  s.email = %q{ribrdb@google.com}
  s.files = ["LICENSE", "Rakefile", "lib/appengine-rack/java.rb", "lib/appengine-rack.rb"]
  s.homepage = %q{http://code.google.com/p/appengine-jruby}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Commom dependencies for configuring an App Engine application via Rack.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
