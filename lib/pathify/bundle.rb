module Pathify
  class Bundle < Finder
    def initialize(cmd)
      @path = `bundle show #{cmd}`
      raise RuntimeError unless File.exists?(@path)
    end
  end
end
