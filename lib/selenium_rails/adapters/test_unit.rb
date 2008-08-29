class Test::Unit::UI::TestRunnerMediator
  def run_suite_with_selenium_rails
    result = nil
    SeleniumRails::ServersRunner.run_with_servers do
      result = run_suite_without_selenium_rails
    end
    result
  end
  alias_method :run_suite_without_selenium_rails, :run_suite
  alias_method :run_suite, :run_suite_with_selenium_rails
end