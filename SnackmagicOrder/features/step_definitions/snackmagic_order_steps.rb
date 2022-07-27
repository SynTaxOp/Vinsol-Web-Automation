
Given('I m on Snackmagic Login page') do
  @driver.navigate.to('https://admin:admin@automation-frontend.snackmagic.com')
  sleep(7)
end

When('Clicked Login button') do
  @driver.find_element(xpath: '/html/body/div[2]/div/div[2]/div/div/div/div/div[3]/header/div[2]/div[3]/div[2]/button').click 
  sleep(3)
end

When('Entered Login credentials and press login button') do
  @driver.find_element(xpath: '/html/body/div[1]/div/div[2]/div[5]/form[1]/div[1]/input').send_keys('avneet+4444@vinsol.com') 
  @driver.find_element(xpath: '//*[@id="password-login"]').send_keys('Vinsol1.') 
  @driver.find_element(xpath: '/html/body/div[1]/div/div[2]/div[5]/form[1]/div[3]/div/button').click 
  sleep(10)
end

Then('Start a new order') do

  @driver.find_element(xpath: '/html/body/div[2]/div/div[2]/div/div/div/div/div[3]/header/div[2]/div[3]/div[1]/div/a[2]').click 
  sleep(10)
  @driver.find_element(link_text: 'OR, START A NEW ORDER').click 
  sleep(3)
end

Then('Enter order details') do
  @driver.find_element(xpath: '//*[@id="treatName"]').send_keys('test-order')
  @driver.find_element(xpath: '//*[@id="senderName"]').send_keys('Srejan Bera')
  @driver.find_elements(class: 'custom-border-radio-title')[1].click
  @driver.find_elements(class: 'custom-border-radio-title')[7].click
  sleep(3)
  @driver.find_element(class: 'button-program-green').click
  sleep(5)
end

Then('Customize your order') do

  @driver.find_element(class: 'custom-border-radio-content').click
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_element(class: 'budget-option').click
  @driver.find_element(class: 'button-program-green').click
  sleep(4)

  @driver.find_element(class: 'custom-border-radio-content').click
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_element(id: 'expectedCount').send_keys(20)
  @driver.find_element(id: 'internationalCount').send_keys(2)
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_element(class: 'button-program-green').click
  sleep(3)


  @driver.find_elements(class: 'custom-border-radio-content')[1].click
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_element(class: 'button-program-green').click
  sleep(5)

  @driver.find_element(class: 'custom-border-radio-content').click
  @driver.find_element(class: 'button-program-green').click
  sleep(5)

  @driver.find_element(tag_name: 'textarea').send_keys('This is a testing order')
  @driver.find_element(class: 'button-program-green').click
  sleep(5)

  @driver.find_element(class: 'button-program-green').click
  sleep(5)

  @driver.find_elements(class: 'custom-border-radio-content')[1].click
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_elements(class: 'custom-border-radio-content')[1].click
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_elements(class: 'custom-border-radio-content')[1].click
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_element(class: 'custom-border-radio-content').click
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_elements(class: 'custom-border-radio-content')[1].click
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_elements(class: 'custom-border-radio-content')[2].click
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_elements(class: 'custom-border-radio-content')[1].click
  @driver.find_element(class: 'button-program-green').click
  sleep(5)
end


Then('I proceed to complete the payment') do
  @driver.find_element(class: 'btn-primary').click
  sleep(5)

  @driver.find_element(class: 'custom-border-radio-content').click
  @driver.find_element(class: 'button-program-green').click
  sleep(3)

  @driver.find_element(class: 'custom-border-radio-content').click
  @driver.find_element(class: 'button-program-green').click
  sleep(10)

  @driver.find_elements(class: 'custom-border-radio-content')[2].click
  @driver.find_element(class: 'button-program-green').click
  sleep(10)

  @driver.quit
end