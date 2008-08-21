# TODO: figure out how to load this from the gem.  See http://rails.lighthouseapp.com/projects/8994/tickets/59
require 'test/unit'

namespace :test do
  desc "Run tests for Selenium (automatically starts rails and selenium RC servers)"
  task :selenium do
    require 'rubygems'
    require 'selenium-rails'

    SeleniumRails::ServersRunner.run_with_servers do
      Rake::Task["test:selenium_with_servers_started"].invoke
    end
  end

  Rake::TestTask.new(:selenium_with_servers_started) do |t|
    t.pattern = 'test/selenium/**/*_test.rb'
    t.verbose = true
  end
end

