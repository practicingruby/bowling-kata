require_relative "../lib/bowling_calculator"
require "minitest/autorun"

describe Frame do
  it "must know how to compute score when frame score is less than 10" do
    frame = Frame.new(0, [3,6])
    frame.score.must_equal(9)
  end

  it "must know how to compute a spare" do
    frame = Frame.new(0, [3,7,4])
    frame.score.must_equal(14)
  end

  it "must know how to compute a strike" do
    frame = Frame.new(0, [10,4,3])
    frame.score.must_equal(17)
  end
end