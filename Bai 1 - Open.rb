require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome

#Open google
driver.get 'https://www.google.com/'

#Enter the URL
driver.get 'http://practice.automationtesting.in/'
sleep 5

#Close browser
driver.quit