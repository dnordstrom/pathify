module Pathify
  class Bundle < Finder
    def initialize(cmd)
      @path = `bundle show #{cmd}`
      print "\n\n#{@path}\nExists? #{File.exists(@path)}\n\n"
      #raise RuntimeError unless File.exists?(@path)
    end
  end
end
