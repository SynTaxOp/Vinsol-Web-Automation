require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara'
require 'site_prism'

# require_relative './arch_linux_main_page.rb'

# Capybara.default_driver = :selenium
#   Capybara.register_driver :selenium do |app|
#     Capybara::Selenium::Driver.new(app, browser: :firefox)
#   end
class YouTubeSearchPage < SitePrism::Page
  set_url 'https://youtube.com'
  set_url_matcher /youtube.com/
  element :searchtext, 'input[id="search"]'
  element :search_button, 'button[id="search-icon-legacy"]'
  elements :first_video, 'a[id="thumbnail"]'

  def enter_search_textword(search_keyword)
    self.searchtext.set(search_keyword)
  end

  def submit
    self.search_button.click
  end

  def playfirstVideo
    self.first_video[0].click
  end

end