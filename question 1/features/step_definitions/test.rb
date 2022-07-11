require 'selenium-webdriver'
driver  = Selenium::WebDriver.for :chrome

Given('I am on Google Search page') do
  driver.navigate.to 'https://www.google.com'
end

When('I enter {string} into the text Box') do |text|
  driver.find_element(:name, 'q').send_keys(text)
end

Then('text field is populated with {string}') do |text|
  expect(driver.find_element(:name, 'q').attribute('value')).to eq(text)
end
