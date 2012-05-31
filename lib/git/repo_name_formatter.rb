module Git
  class RepoNameFormatter
    def self.format(path)
      path.scan(/\/(\w+)\/$/)[0].first
    end
  end
end

