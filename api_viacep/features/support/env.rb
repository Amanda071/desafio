require 'cucumber'
require 'httparty'
require 'pry'
require 'pathname'
require 'json'
require 'rubygems'
require 'yaml'
require 'rspec'

MASSA = YAML.load_file(File.dirname(__FILE__) + '/massa.yaml')
