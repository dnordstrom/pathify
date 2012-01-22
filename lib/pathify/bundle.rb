module Pathify
  class Bundle < Finder
    def initialize(cmd)
      output = `bundle show #{cmd}`
      @path = output if FileTest.exists? output
    end
  end
end
