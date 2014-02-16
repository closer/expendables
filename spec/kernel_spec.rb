require "spec_helper"

require "expendables/kernel"

describe Kernel do
  it { less(4).call(3).must_equal true }
  it { less(3).call(4).must_equal false }
  it { more(3).call(4).must_equal true }
  it { more(4).call(3).must_equal false }
end
