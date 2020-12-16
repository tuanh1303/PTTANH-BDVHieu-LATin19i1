require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome

#Open google
driver.get 'https://www.google.com/'


#Enter the URL
driver.get 'http://practice.automationtesting.in/'
sleep 5

#Set size of browser window.
driver.manage.window.resize_to(100,200)
sleep 5

#Close browser
driver.quit
