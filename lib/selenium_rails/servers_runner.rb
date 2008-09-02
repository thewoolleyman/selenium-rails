require 'selenium'
require File.dirname(__FILE__) + '/selenium_driver_manager'

module SeleniumRails
  class ServersRunner
    def self.run_with_servers(&block)
      begin
        rails_server_process = IO.popen("ruby #{RAILS_ROOT}/script/server --port=3001 --environment=test")
        selenium_server = Selenium::SeleniumServer.new
        unless selenium_server.running?
          IO.popen("selenium")
        end

        yield

        Selenium::SeleniumDriverManager.stop_drivers
      rescue Exception => e
        puts e
        raise e
      ensure
        puts "Killing rails server process at pid #{rails_server_process.pid}"
        Process.kill(9,rails_server_process.pid)
        puts "Killing selenium server"
        selenium_server.stop
      end
    end
  end
end