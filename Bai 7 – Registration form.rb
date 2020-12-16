require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome

#Open google
driver.get 'https://www.google.com/'

#Enter the URL
driver.get 'http://practice.automationtesting.in/'
sleep 4
    
#Click on My Account Menu   
driver.find_element(:link_text,"My Account").click
sleep 2

#Enter registered Email Address in Email-Address textbox
driver.find_element(:id, 'reg_email').send_keys 'pttanh.19i@cit.udn.vn'
sleep 3

#Enter your own password in password textbox
driver.find_element(:id, 'reg_password').send_keys 'bietchetlien@123'
sleep 3

#Click on Register button
driver.find_element(css: '[name="register"]').click
sleep 5

#Close browser
driver.quit

