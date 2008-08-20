module Selenium
  class TestCase < Test::Unit::TestCase
    include Selenium::SeleniumHelper
    
    def default_test
    end
  end
end