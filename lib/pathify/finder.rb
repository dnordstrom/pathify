module Pathify
  class Finder
    attr_accessor :path

    def to_s
      @path || 'No path found.'
    end
  end
end
