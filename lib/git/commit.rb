require_relative '../project_update'

module Git
  class Commit < ::ProjectUpdate
    def initialize(project_path, description)
      super(Git::RepoNameFormatter.format(project_path), description)
    end
  end
end

