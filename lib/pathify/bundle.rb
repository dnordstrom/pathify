module Pathify
  class Bundle < Finder
    def initialize(cmd)
      output = `bundle show #{cmd}`
      print "\n\n#{output}\nExists? #{File.directory?(output)}\n"
      @path = output if FileTest.exists? output
    end
  end
end
