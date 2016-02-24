require_relative "../lib/bowling_calculator"
require "minitest/autorun"

describe BowlingCalculator do
  let(:calculator) { BowlingCalculator.new }

  it "should begin with a score of 0" do
    calculator.score.must_equal(0)
  end

  it 'should have a score of 3 when 3 pins are knocked down on the first ball' do
    calculator.score.must_equal(3)
  end
end
