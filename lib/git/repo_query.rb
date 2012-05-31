module Git
  class RepoQuery

    attr_accessor :start_date, :end_date, :author, :path

    def build_query
      query = ""
      query += "cd \"#{@path}\";  "
      query += "git log --pretty=format:'%s' "
      query += "--since=\"#{@start_date.strftime('%m/%d/%Y')}\" " if @start_date
      query += "--until=\"#{@end_date.strftime('%m/%d/%Y')}\" " if @end_date 
      query += "--author=\"#{@author}\" " if @author
    end

    def find(args={})
      @path = args.fetch(:path)

      CommandLineExecutor.execute(build_query) do |line|
        yield line
      end
    end
  end
end
