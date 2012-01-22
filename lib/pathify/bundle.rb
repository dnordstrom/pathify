module Pathify
  class Bundle < Pathify::Finder
    def initialize(cmd)
      @path = `bundle show #{cmd}`
      raise RuntimeError unless File.exists?(@path)
    end
  end
end
