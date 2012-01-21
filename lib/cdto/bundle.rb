module Cdto
  class Bundle
    def initialize(cmd)
      path = `bundle show #{cmd}`
      `cd #{path}`
    end
  end
end
