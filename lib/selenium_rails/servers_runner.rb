require 'selenium'
require File.dirname(__FILE__) + '/selenium_driver_manager'

module SeleniumRails
  class ServersRunner
    def self.run_with_servers(&block)
      begin
        start_servers
        yield
        Selenium::SeleniumDriverManager.stop_drivers
      rescue Exception => e
        puts e
        raise e
      ensure
        stop_servers
      end
    end
    
    def self.start_servers
      @@rails_server_process = IO.popen("ruby #{RAILS_ROOT}/script/server --port=3001 --environment=test")
      @@selenium_server = Selenium::SeleniumServer.new
      unless @@selenium_server.running?
        IO.popen("selenium")
      end
      Timeout.timeout(10) do
        until @@selenium_server.running?
          sleep 0.5
        end
        sleep 1.5 # TODO: check for socket 
      end
    end
    
    def self.stop_servers
      puts "Killing rails server process at pid #{@@rails_server_process.pid}"
      Process.kill(9,@@rails_server_process.pid)
      puts "Killing selenium server"
      @@selenium_server.stop
    end
  end
end