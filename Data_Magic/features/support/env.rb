require 'selenium-webdriver'

BeforeAll do
  $browser = Selenium::WebDriver.for :chrome
end
