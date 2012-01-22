module Pathify
  class Bundle < Finder
    def initialize(cmd)
      output = `bundle show #{cmd}`
      print "\n\n#{output}\nExists? #{FileTest.exists?(output)}\n"
      @path = output if FileTest.exists? output
    end
  end
end
