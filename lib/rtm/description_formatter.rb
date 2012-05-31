module Rtm
  class DescriptionFormatter
    def self.format(description)
      results = description.scan(/- ?(.+)$/)[0]
      results.nil? ? description : results.first
    end
  end
end
