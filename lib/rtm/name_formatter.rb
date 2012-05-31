module Rtm
  class NameFormatter
    def self.format(description)
      results = description.scan(/^(\w+) -/)[0]
      results.nil? ? description : results.first
    end
  end
end
