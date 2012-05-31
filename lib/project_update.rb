class ProjectUpdate
  def initialize(project, description)
    @project = project
    @description = description.gsub(/\n/, '')
  end

  def to_s
    "#{@project} - #{@description}"
  end
end
