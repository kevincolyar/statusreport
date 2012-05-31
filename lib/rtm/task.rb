module Rtm
  class Task < ::ProjectUpdate
    def initialize(task)
      super(Rtm::NameFormatter.format(task.name),
            Rtm::DescriptionFormatter.format(task.name))
    end
  end
end
