require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome

#Open google
driver.get 'https://www.google.com.vn'

#Enter the URL 
driver.get 'https://itmscoaching.herokuapp.com/form'
sleep 3

#Enter the form with following data
element = driver.find_element(css: '[id="first-name"]')
element.send_keys"Binh"
sleep 2

element = driver.find_element(css: '[id="last-name"]')
element.send_keys"Nguyen"
sleep 2

element = driver.find_element(css: '[id="job-title"]')
element.send_keys"Tester"
sleep 2

driver.find_element(css: '[id="radio-button-3"]').click
sleep 2

driver.find_element(css: '[id="checkbox-2"]').click
sleep 2

driver.find_element(:id, "select-menu").find_element(:css,"option[value='3']").click
sleep 2

element = driver.find_element(css: '[id="datepicker"]')
element.send_keys"7/20/2011"
sleep 2

#Click Submit
driver.find_element(:xpath, '/html[1]/body[1]/div[1]/form[1]/div[1]/div[8]/a[1]').click    
sleep 2

#Close browser
driver.quit

