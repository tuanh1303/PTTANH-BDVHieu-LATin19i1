require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome

#Open google
driver.get 'https://www.google.com/'        


#Enter the URL
driver.get 'http://practice.automationtesting.in/'
sleep 5

#Maximize browser window
driver.manage.window.maximize
sleep 5

#Get page tile and print it
puts "Page tile is #{driver.title}"

#Close browser
driver.quit
