
class LenskartSearch
  include PageObject
  text_field(:search_box, :name => 'q')

  def visit_site
    navigate_to 'https://www.lenskart.com'
  end

  def open_first_card
    sleep(5)
    @browser.find_elements(:class => 'no-decoration')[2].click
    sleep(5)
  end

  def search_for(search_key)
    self.search_box = search_key
  end

  def click_search_button
    sleep(1)
    @browser.find_element(:name =>'q').send_keys(:enter)
  end

  def search_result_present?(search_key)
    search_box == search_key
  end
end