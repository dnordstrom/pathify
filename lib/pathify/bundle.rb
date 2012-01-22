module Pathify
  class Bundle < Finders
    def initialize(cmd)
      @path = `bundle show #{cmd}`
      raise RuntimeError unless File.exists?(@path)
    end
  end
end
