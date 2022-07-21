
require_relative '../pages/formTest.rb'

Given "We are on Form page" do
 @form_page = FormPage.new($browser)
 @form_page.goto
end

When "We enter the form details for {string}" do |detail_no|
  @form_page.fill_form(detail_no)
  sleep 2
end

Then "Press the submit button" do
  @form_page.submit
  sleep 3
end