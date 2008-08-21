= Selenium Rails

Copyright:: (c) 2008 Chad Woolley and others
License::   MIT License

Selenium Rails supports the use of Selenium RC with Ruby on Rails projects.

= Instructions

* gem install selenium-rails
* Copy the file /lib/tasks/selenium_tasks.rake into your app's lib/tasks directory
* Write some selenium tests under test/selenium.  For an example app, see http://github.com/pivotal/minimalenium
* 'rake test:selenium' to run all selenium tests
* 'rake test:selenium TEST=test/selenium/my_test.rb' to run a single test file

For documentation on the Selenium Ruby gem, see http://selenium.rubyforge.org/

For documentation on the Selenium project and Selenium RC, see the Selenium homepage: http://www.openqa.org/selenium