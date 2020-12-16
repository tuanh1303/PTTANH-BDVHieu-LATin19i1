require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome

#Open google
driver.get 'https://www.google.com/'

#Enter the URL
driver.get 'https://the-internet.herokuapp.com'
sleep 3

#Click on Form Authentication
driver.find_element(:link_text,"Form Authentication").click
sleep 2

#Enter the form with following data
driver.find_element(:id, 'username').send_keys 'tomsmith'
sleep 2
driver.find_element(:id, 'password').send_keys 'SuperSecretPassword'
sleep 2

#Click on Login button
driver.find_element(:xpath, '/html[1]/body[1]/div[2]/div[1]/div[1]/form[1]/button[1]').click
sleep 5

#Get page tile and print it
puts "Page tile is #{driver.title}"

#close browser
driver.quit