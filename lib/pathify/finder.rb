module Pathify
  class Finder
    def to_s
      @path ||= 'No path found.'
    end
  end
end
