module Pathify
  class Gem < Finder
    def initialize(cmd)
      output = `gem which #{cmd}`
      @path = File.expand_path(
        File.join(File.basename(output), '..')
      ) if output =~ /^\//
    end
  end
end
