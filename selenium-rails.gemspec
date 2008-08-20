Gem::Specification.new do |s|
  s.name = %q{selenium-rails}
  s.version = "0.0.1"
 
  s.specification_version = 2 if s.respond_to? :specification_version=
 
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chad Woolley, Others"]
  s.date = %q{2008-08-20}
  s.description = %q{Support for using Selenium RC with Rails}
  s.email = %q{thewoolleyman@gmail.com}
  s.extra_rdoc_files = ["lib/selenium_rails/selenium_driver_manager.rb", "lib/selenium_rails/selenium_helper.rb", "lib/selenium_rails/selenium_test_case.rb", "lib/selenium_rails/servers_runner.rb", "lib/selenium_rails.rb", "lib/selenium-rails.rb", "README"]
  s.files = ["lib/selenium_rails/selenium_driver_manager.rb", "lib/selenium_rails/selenium_helper.rb", "lib/selenium_rails/selenium_test_case.rb", "lib/selenium_rails/servers_runner.rb", "lib/selenium_rails.rb", "lib/selenium-rails.rb", "Manifest", "README", "selenium-rails.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://selenium-rails.rubyforge.org}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Selenium Rails", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{selenium-rails}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Support for using Selenium RC with Rails.}
 
  s.add_dependency(%q<Selenium>, [">= 1.1.14"])
end