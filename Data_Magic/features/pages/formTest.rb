require 'selenium-webdriver'
require 'data_magic'
require 'page-object'

class FormPage
  include DataMagic
  include PageObject

  DataMagic.yml_directory='C:\Workspace\Vinsol SnackMagic\web automation\Data_Magic\features\data'
  DataMagic.load 'form_data.yml'

  page_url 'https://docs.google.com/forms/d/e/1FAIpQLScaBZ2az3YwBeRdaSiFfXmdombTKB67vYd6QFRX0cr6Y-XUGg/viewform'
  # set_url_matcher /docs.google.com/forms/d/e/1FAIpQLScaBZ2az3YwBeRdaSiFfXmdombTKB67vYd6QFRX0cr6Y-XUGg/viewform/
  text_field(:name, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:batch, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div[1]/div/div[1]/input' )
  text_area(:address, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[1]/div[2]/textarea' )
  div(:frontend, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div[1]/div[1]/label/div')
  div(:backend, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div[1]/div[2]/label/div')
  span(:submit_button, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[3]/div[1]/div[1]/div/span')


  def fill_form(detail_no)
    h = data_for "form_data/#{detail_no}"
    populate_page_with h

    h['skills'].split(', ').each do |skill|
      case skill
      when /frontend/i
        frontend_element.click
      when /backend/i
        backend_element.click
      end
    end
  end

  def submit
    submit_button_element.click
  end

end