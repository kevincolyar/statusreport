
class StatusReportBuilder
  attr_reader :updates

  def initialize(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
    @updates = []
  end

  def add_rtm(args={})
    query = Rtm::Query.new
    query.start_date = @start_date
    query.end_date = @end_date

    query.find do |task|
      @updates << Rtm::Task.new(task)
    end
  end

  def add_git(dir, author=nil)
    query = Git::RepoQuery.new
    query.start_date = @start_date
    query.end_date = @end_date
    query.author = author

    Dir[dir].each do |path|
      next unless File.exists?(path + '/.git')

      query.find(:path => path) do |commit|
        @updates << Git::Commit.new(path, commit)
      end
    end
  end
end
