require "spec_helper"

require "expendables"

class A
  def b(c, d, e, f)
    c + d + e + f
  end
end

describe Symbol do
  it { :+.to_proc(3).call(4).must_equal 7 }
  it { :b.to_proc(1,2).call(A.new, 3, 4).must_equal 10 }

  it { :+[3].call(4).must_equal 7 }
end
