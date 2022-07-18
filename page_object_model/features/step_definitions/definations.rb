require_relative '../pages/lenskartsearchpage.rb'

Given(/^a user goes to LensKart home page$/) do
  @lenskart = LenskartSearch.new(@browser)
  @lenskart.visit_site
end

When(/^user searches for (.*)$/) do |search_keyword|
  @lenskart.search_for(search_keyword)
  @lenskart.click_search_button
end

Then(/^site should return result for (.*)$/) do |search_keyword|
  expect(@lenskart.search_result_present?(search_keyword)).to eq(true)
end

Then(/^Open the first found item$/) do
  @lenskart.open_first_card
end











