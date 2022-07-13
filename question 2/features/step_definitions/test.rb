require 'selenium-webdriver'
driver  = Selenium::WebDriver.for :chrome

Given('I am on YouTube homepage') do
  driver.navigate.to 'https://www.youtube.com'
end

When('I enter {string} into the text Box') do |text|
  driver.find_element(:name, 'search_query').send_keys(text)
end

Then('text field is populated with {string}') do |text|
  expect(driver.find_element(:name, 'search_query').attribute('value')).to eq(text)
end
