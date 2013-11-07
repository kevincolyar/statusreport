require 'rufus/rtm'

module Rtm
  class Query
    include Rufus::RTM
    attr_accessor :start_date, :end_date

    def build_query
      query = ''
      query += "completedAfter:#{@start_date.strftime('%m/%d/%Y')} " 
      query += "completedBefore:#{@end_date.strftime('%m/%d/%Y')} "
    end

    def find
      begin
        tasks = Rufus::RTM::Task.find(:filter => build_query)
        tasks.each do |task|
          yield task
        end
      rescue
      end
    end
  end
end
