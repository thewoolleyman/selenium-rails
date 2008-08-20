module Selenium
  module SeleniumHelper
    def browser
      SeleniumDriverManager.driver
    end
  end
end