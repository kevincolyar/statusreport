class StatusReportFormatter

  def initialize(start_date, end_date, updates)
    @start_date = start_date
    @end_date = end_date
    @updates = updates
  end

  def title
    "# Report - #{@start_date} to #{@end_date}\n" +
    "---\n\n" +
    "## This Week"
  end

  def footer
    "## Next Week"
  end

  def to_s
    title + "\n\n" + @updates.join("\n") + "\n\n" + footer
  end
end
