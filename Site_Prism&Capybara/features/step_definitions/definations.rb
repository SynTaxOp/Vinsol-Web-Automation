
require_relative '../pages/youtubesearchpage.rb'

Given "We are on YouTube search page" do
 @search_page = YouTubeSearchPage.new
 @search_page.load
end

When "We enter the search_keyword {string}" do |search_text|
  @search_page.enter_search_textword(search_text)
  sleep(2)
  @search_page.submit
  sleep(5)
end

Then "Play the first video" do
  sleep 3
  @search_page.playfirstVideo
  sleep 10
end