require 'cucumber'
require 'httparty'
require 'pry'
require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.saucedemo.com/'
  config.default_max_wait_time = 4
end
