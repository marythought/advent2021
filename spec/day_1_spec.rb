require "spec_helper"
require "day_1.rb"

test_input = %w(
  199
  200
  208
  210
  200
  207
  240
  269
  260
  263
).map(&:to_i)

puzzle_input = IO.read("input/day_1.txt").delete(",").split.map(&:to_i)

describe 'day 1 part 1' do
  it 'parses the input' do
    assert_equal [199, 200, 208, 210, 200, 207, 240, 269, 260, 263], test_input
  end

  it "returns a valid result" do
    assert_equal 7, sonar_sweep(test_input)
  end

  it "solves the puzzle" do
    # assert_equal 'answer', sonar_sweep(input)
    assert_equal 1226, sonar_sweep(puzzle_input)
  end
end

describe 'day 1 part 2' do
  it "returns a valid result" do
    assert_equal 5, sonar_sweep_sliding_scale(test_input)
  end

  it "solves the puzzle" do
    # assert_equal 'answer', sonar_sweep_sliding_scale(puzzle_input)
    assert_equal 1252, sonar_sweep_sliding_scale(puzzle_input)
  end
end
