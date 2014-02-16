require "spec_helper"

require "expendables/symbol"

describe Symbol do
  it { :+.to_proc(3).call(4).must_equal 7 }
  it { :+[3].call(4).must_equal 7 }
end
