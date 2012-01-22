module Pathify
  class Gem < Finder
    def initialize(cmd)
      output = `gem which #{cmd}`
      @path = File.expand_path(File.join(File.dirname(output), '..')) if output =~ /^\//
    end
  end
end
