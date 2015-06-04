nrequire 'rubygems'
require 'peach'
require 'selenium-webdriver'

caps1 = Selenium::WebDriver::Remote::Capabilities.chrome
caps1['platform'] = 'Linux'
caps1['version'] = '37.0'
caps1['passed'] = 'true'
caps1["name"] = "Selenium on Sauce on C37Linux"

caps2 = Selenium::WebDriver::Remote::Capabilities.firefox
caps2['platform'] = 'Windows 7'
caps2['version'] = '35.0'
caps2['passed'] = 'true'
caps2["name"] = "Testing made awesome on F35Win7"

caps3 = Selenium::WebDriver::Remote::Capabilities.safari
caps3['platform'] = 'OS X 10.9'
caps3['version'] = '7.0'
caps3['passed'] = 'true'
caps3["name"] = "Sausome Selenium on S7OSX10.9"

caps4 = Selenium::WebDriver::Remote::Capabilities.internet_explorer
caps4['platform'] = 'Windows 8.1'
caps4['version'] = '11.0'
caps4['passed'] = 'true'
caps4["name"] = "Selenium on Sauce on IE11Win8.1"

caps5 = Selenium::WebDriver::Remote::Capabilities.firefox
caps5['platform'] = 'Linux'
caps5['version'] = 'beta'
caps5['passed'] = 'true'
caps5["name"] = "Selenium on Sauce on Linux"

caps6 = Selenium::WebDriver::Remote::Capabilities.chrome
caps6['platform'] = 'Windows XP'
caps6['version'] = '40.0'
caps6['passed'] = 'true'
caps6["name"] = "Testing made awesome on WinXP"

caps7 = Selenium::WebDriver::Remote::Capabilities.safari
caps7['platform'] = 'OS X 10.8'
caps7['version'] = '6.0'
caps7['passed'] = 'true'
caps7["name"] = "Running sauce on Mac 10.8"

caps8 = Selenium::WebDriver::Remote::Capabilities.internet_explorer
caps8['platform'] = 'Windows 8'
caps8['version'] = '10.0'
caps8['passed'] = 'true'
caps8["name"] = "Let's try on IE10"


caps = [caps1, caps2, caps3, caps4, caps5, caps6, caps7, caps8]

caps.peach do |cap|
driver = Selenium::WebDriver.for(:remote,
    :url => "http://john_doe1:f7cc4afd-99e0-4676-b2c8-381ea9e9c750@ondemand.saucelabs.com:80/wd/hub",
    :desired_capabilities => cap)

driver.get "http://blazedemo.com/"

if not driver.find_element(:tag_name, "html").text.include? "Welcome to the Simple Travel Agency!"
    print "verifyTextPresent failed"
end

if not driver.find_element(:xpath, "//div[3]/form/select[1]//option[5]").selected?
    driver.find_element(:xpath, "//div[3]/form/select[1]//option[5]").click
end

if not driver.find_element(:xpath, "//div[3]/form/select[2]//option[5]").selected?
    driver.find_element(:xpath, "//div[3]/form/select[2]//option[5]").click
end

driver.find_element(:css, "input.btn.btn-primary").click
if not driver.find_element(:tag_name, "html").text.include? "Flights from San Diego to New York:"
    print "verifyTextPresent failed"
end

driver.find_element(:css, "input.btn.btn-small").click
if not driver.find_element(:tag_name, "html").text.include? "Total Cost: 987.32"
    print "verifyTextPresent failed"
end

if not driver.find_element(:tag_name, "html").text.include? "Flight Number: 43"
    print "verifyTextPresent failed"
end

driver.find_element(:id, "inputName").click
driver.find_element(:id, "inputName").clear
driver.find_element(:id, "inputName").send_keys "Abhijit"
driver.find_element(:id, "address").click
driver.find_element(:id, "address").clear
driver.find_element(:id, "address").send_keys "539 Bryant St"
driver.find_element(:id, "city").click
driver.find_element(:id, "city").clear
driver.find_element(:id, "city").send_keys "San Francisco"
driver.find_element(:id, "state").click
driver.find_element(:id, "state").clear
driver.find_element(:id, "state").send_keys "CA"
driver.find_element(:id, "zipCode").click
driver.find_element(:id, "zipCode").clear
driver.find_element(:id, "zipCode").send_keys "94107"

if not driver.find_element(:xpath, "//form[@class='form-horizontal']/div[6]/div/select//option[3]").selected?
    driver.find_element(:xpath, "//form[@class='form-horizontal']/div[6]/div/select//option[3]").click
end

driver.find_element(:id, "creditCardNumber").click
driver.find_element(:id, "creditCardNumber").clear
driver.find_element(:id, "creditCardNumber").send_keys "4347845678906543"
driver.find_element(:id, "nameOnCard").click
driver.find_element(:id, "nameOnCard").clear
driver.find_element(:id, "nameOnCard").send_keys "Abhijit Pendyal"
driver.find_element(:css, "input.btn.btn-primary").click

driver.quit
end
