class TimePeriod
  def self.get(argv)
    argv.include?('--last-week') ? 'last week' : 'this week'
  end
end
