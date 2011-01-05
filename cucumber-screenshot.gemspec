# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cucumber-screenshot}
  s.version = "0.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joel Chippindale"]
  s.date = %q{2011-01-05}
  s.description = %q{Extension for Cucumber (http://cukes.info/) that makes it easy to take HTML snapshots and also to use Webkit to capture PNG screenshots of your web application during tests}
  s.email = %q{joel.chippindale@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["cucumber-screenshot.gemspec", "cucumber-screenshot.tmproj", "MIT-LICENSE", "Rakefile", "README.rdoc", "spec", "lib/cucumber_screenshot", "lib/cucumber_screenshot/world.rb", "lib/cucumber_screenshot.rb"]
  s.homepage = %q{http://github.com/mocoso/cucumber-screenshot}
  s.post_install_message = %q{To take actual screenshots rather than just snapshots of the HTML returned you will need Mac OS X 10.5 or later with RubyCocoa.

You will also need to install the snapurl gem

    gem install snapurl --version=0.0.3

For details about how to set up your features to make use of cucumber-screenshot see http://github.com/mocoso/cucumber-screenshot}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Extension for Cucumber to capture HTML snapshots/PNG screenshots of your app}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_runtime_dependency(%q<snapurl>, ["~> 0.0.3"])
      s.add_runtime_dependency(%q<rspec>, ["~> 2.4"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_dependency(%q<snapurl>, ["~> 0.0.3"])
      s.add_dependency(%q<rspec>, ["~> 2.4"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.4"])
    s.add_dependency(%q<snapurl>, ["~> 0.0.3"])
    s.add_dependency(%q<rspec>, ["~> 2.4"])
  end
end
