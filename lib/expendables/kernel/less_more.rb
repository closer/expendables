require "expendables/symbol"
require "expendables/comparable"

module Kernel
  def less(boundary)
    :less[boundary]
  end

  def more(boundary)
    :more[boundary]
  end
end
