require "spec_helper"

require "expendables/comparable"

describe Numeric do
  it { 3.less(4).must_equal true }
  it { 4.less(3).must_equal false }
  it { 4.more(3).must_equal true }
  it { 3.more(4).must_equal false }
end
