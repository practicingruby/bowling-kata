require_relative "../lib/bowling_calculator"
require "minitest/autorun"

describe BowlingCalculator do
  let(:calculator) { BowlingCalculator.new }

  it "should begin with a score of 0" do
    calculator.score.must_equal(0)
  end

  it 'should have a score of 3 when 3 pins are knocked down on the first ball' do
    calculator << 3
    calculator.score.must_equal(3)
  end

  it "should have a score of 9 after [3,6] rolled in first frame" do
    calculator << 3
    calculator << 6

    calculator.score.must_equal(9)
  end
  
  it "should not compute score if there is an unresolved spare" do
    calculator << 3
    calculator << 7

    calculator.score.must_be_nil
  end

  it 'should have a score of 18 after a resolved spare [3,7,4]' do
    calculator << 3
    calculator << 7
    calculator << 4
    calculator.score.must_equal(18)
  end
end
