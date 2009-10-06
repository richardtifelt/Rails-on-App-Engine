# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-timestamps}
  s.version = "0.10.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Foy Savas"]
  s.date = %q{2009-09-30}
  s.description = %q{DataMapper plugin for magical timestamps}
  s.email = ["foysavas [a] gmail [d] com"]
  s.extra_rdoc_files = ["README.rdoc", "LICENSE", "TODO", "History.rdoc"]
  s.files = ["History.rdoc", "LICENSE", "Manifest.txt", "README.rdoc", "Rakefile", "TODO", "lib/dm-timestamps.rb", "lib/dm-timestamps/version.rb", "spec/integration/timestamps_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/install.rb", "tasks/spec.rb"]
  s.homepage = %q{http://github.com/datamapper/dm-more/tree/master/dm-timestamps}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{datamapper}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{DataMapper plugin for magical timestamps}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dm-core>, ["= 0.10.1"])
    else
      s.add_dependency(%q<dm-core>, ["= 0.10.1"])
    end
  else
    s.add_dependency(%q<dm-core>, ["= 0.10.1"])
  end
end
