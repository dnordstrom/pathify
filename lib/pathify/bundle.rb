module Pathify
  class Bundle
    def initialize(cmd)
      `bundle show #{cmd}`
    end
  end
end
