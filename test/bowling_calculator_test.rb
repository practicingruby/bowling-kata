require_relative "../lib/bowling_calculator"
require "minitest/autorun"

describe BowlingCalculator do
  let(:calculator) { BowlingCalculator.new }

  it "should return nil when a frame has not started yet" do
    calculator[1].must_be_nil
  end

  it 'should have a score of 3 when 3 pins are knocked down on the first ball' do
    calculator << 3
    calculator[1].must_equal(nil) # frame isn't complete yet
  end

  it "should have a score of 9 after [3,6] rolled in first frame" do
    calculator << 3
    calculator << 6

    calculator[1].must_equal(9)
  end
  
  it "should not compute score if there is an unresolved spare" do
    calculator << 3
    calculator << 7

    calculator[1].must_be_nil # frame isn't complete yet
  end

  it 'should have a first frame score of 14 after a resolved spare [3,7,4]' do
    calculator << 3
    calculator << 7
    calculator << 4
    calculator[1].must_equal(14)
  end

  it 'can compute f1(2,7)=9 f2(3,4)=7' do
    calculator << 2
    calculator << 7
    calculator << 3
    calculator << 4

    calculator[1].must_equal(9)
    calculator[2].must_equal(7)
  end


  it 'can compute f1(10)=17 f2(3,4)=7 f3(5,2)' do
    calculator << 10
    calculator << 3
    calculator << 4
    calculator << 5
    calculator << 2

    calculator[1].must_equal(17)
    calculator[2].must_equal(7)
    calculator[3].must_equal(7)
  end

  it 'can compute f1(10)=25 f2(10)=17 f3=(5,2)=7' do
    calculator << 10
    calculator << 10
    calculator << 5
    calculator << 2

    calculator[1].must_equal(25)
    calculator[2].must_equal(17)
    calculator[3].must_equal(7)
  end

end
