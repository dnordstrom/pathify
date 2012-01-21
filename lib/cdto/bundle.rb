module Cdto
  class Bundle
    def initialize(cmd)
      puts `bundle show #{cmd}`
    end
  end
end
