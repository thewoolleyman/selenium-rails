module Selenium
  class SeleniumDriverManager
    # supports multiple drivers, keyed by options
    @@selenium_drivers = {}

    def self.driver(driver_options = {})
      browser_start_command = ENV['BROWSER_START_COMMAND'] ? ENV['BROWSER_START_COMMAND'] : '*firefox'
      opts = {:server_host => 'localhost', :server_port => '4444', :browser_start_command => browser_start_command, 
              :browser_url => 'http://localhost:3001', :timeout => 10000}.merge(driver_options)
      key = opts.map {|key, value| key.to_s + '=>' + value.to_s}.sort.join(',')
      unless @@selenium_drivers[key]
        @@selenium_drivers[key] = Selenium::SeleniumDriver.new(opts[:server_host], opts[:server_port], opts[:browser_start_command],
                                     opts[:browser_url], opts[:timeout])
        @@selenium_drivers[key].start
      end
      @@selenium_drivers[key]
    end

    def self.stop_drivers
      # Doesn't actually do anything if called from a different process than the one where the
      # drivers were started, but they will die anyway when the server is killed.
      @@selenium_drivers.each do |key, selenium_driver|
        selenium_driver.stop
        @@selenium_drivers.delete(key)
      end
    end
  end
end
