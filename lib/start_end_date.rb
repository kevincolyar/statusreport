require_relative 'time_period'
require 'active_support/all'
require 'chronic'

class StartEndDate
  def self.get(argv)
    time_period = TimePeriod.get(argv)
    week = Chronic.parse(time_period).to_date()
    start_date = week.beginning_of_week()
    end_date = week.end_of_week()
    return start_date, end_date
  end
end
