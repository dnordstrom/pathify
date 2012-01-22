module Pathify
  class Gem < Finder
    def initialize(cmd)
      output = `gem which #{cmd}`
      @path = output if output =~ /^\//
    end
  end
end
