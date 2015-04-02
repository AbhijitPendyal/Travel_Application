require 'rubygems'
require 'selenium-webdriver'

caps = Selenium::WebDriver::Remote::Capabilities.new
caps["browserName"] = "internet explorer"
caps["version"] = "11"
caps["platform"] = "Windows 7"
caps["name"] = "Selenium on Sauce on IE11W8.1"
caps["prerun"] = "{\"executable\":\"http://dl.dropboxusercontent.com/u/11869739/Upload_Dialog_FF.exe\", \"background\":true}"


# In order to connect to Sauce Labs you will need your Sauce Labs username and access key.
# Your username and access key can be found here https://saucelabs.com/account
driver = Selenium::WebDriver.for(:remote,
:url => "http://abhijitpendyal:7a81c9f5-a6de-406d-9923-4823266d649b@ondemand.saucelabs.com:80/wd/hub",
:desired_capabilities => caps)

driver.navigate.to "http://www.google.com/"
driver.find_element(:id, "gbqfq").click
driver.find_element(:id, "gbqfq").clear
driver.find_element(:id, "gbqfq").send_keys "saucelabs"
driver.quit
