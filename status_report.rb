#!/usr/bin/env ruby
 
require 'rubygems'
require 'yaml'

# Set environment variables for RTM
settings = YAML.load_file('settings.yml')

settings['rtm'].each_pair do |key, value|
  ENV[key.upcase] = value
end

# Require files
Dir.glob(File.dirname(__FILE__) + '/lib/**/*.rb') {|file| require file}

# Generate report
start_date, end_date = StartEndDate.get(ARGV)

status_report_builder = StatusReportBuilder.new(start_date, end_date)
status_report_builder.add_rtm(settings['rtm'])
settings['git'].each do |repo|
  repo = repo[1]
  status_report_builder.add_git(repo['path'], repo['author'])
end

status_report_formatter = StatusReportFormatter.new(start_date, end_date, status_report_builder.updates)
puts status_report_formatter.to_s
