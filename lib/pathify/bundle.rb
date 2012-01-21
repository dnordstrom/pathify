module Pathify
  class Bundle < Finder
    def initialize(cmd)
      @path = `bundle show #{cmd}`
    end
  end
end
