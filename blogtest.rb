# Create a program that will test the website morganwebdev.org/posts and report any errors.
# The program should be able to check for an h1 element with the text "Morgan's blog"

require 'test/unit'
require 'rubygems'
require 'selenium-webdriver'

class TestMorganWebDev < Test::Unit::TestCase
  def setup
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.morganwebdev.org/"
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end

  def teardown
    @driver.quit
    assert_equal [], @verification_errors
  end

  def test_morganwebdevorg
    @driver.get(@base_url + "/")
    body = @driver.find_element(:class, 'helvetica')
    puts body.text
    assert body.text.include?('Morgan')
    assert !body.text.include?('500 Error')
    assert body.text.include?('Web Performance is good')
  end
end