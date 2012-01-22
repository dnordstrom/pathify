module Pathify
  class Bundle < Finder
    def initialize(cmd)
      output = `bundle show #{cmd}`
      @path = output if output =~ /^\//
    end
  end
end
