gem 'minitest'
require 'minitest/autorun'
require_relative 'fibber'

class FibberTest < Minitest::Test
  attr_reader :fibber

  def setup
    @fibber = Fibber.new
  end

  def test_it_adds_first_two_and_returns_three_element_array
    assert_equal [0,1,1], fibber.fiberize(3)
  end

  def test_it_adds_next_two_and_returns_four_element_array
    assert_equal [0,1,1,2], fibber.fiberize(4)
  end

  def test_it_adds_two_previous_numbers_and_adds_sum_to_array
    assert_equal [0,1,1,2,3], fibber.fiberize(5)
    assert_equal [0,1,1,2,3,5,8,13,21,34], fibber.fiberize(10)
    assert_equal [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377], fibber.fiberize(15)
  end
end