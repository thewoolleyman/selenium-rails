namespace :test do
  desc "Run tests for Selenium (automatically starts rails and selenium RC servers)"
  task :selenium do
    Rake::Task["test:selenium_with_servers_started"].invoke
  end

  Rake::TestTask.new(:selenium_with_servers_started) do |t|
    t.pattern = 'test/selenium/**/*_test.rb'
    t.verbose = true
  end
end