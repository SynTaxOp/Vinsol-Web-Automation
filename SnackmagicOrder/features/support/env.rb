require 'selenium-webdriver'

Before do
  @driver = Selenium::WebDriver.for(:chrome)
end