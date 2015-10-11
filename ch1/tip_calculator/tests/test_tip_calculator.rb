require 'minitest/autorun'
require_relative '../lib/tip_calculator'

class TestTipCalculator < Minitest::Test
  def setup
    @bill = 10.0
    @tip_calc = TipCalculator.new
  end

  def test_calculate_tip
    assert_equal @tip_calc.calculate_tip(@bill, 15), 1.50
  end

  def test_calculate_total
    assert_equal @tip_calc.calculate_total(@bill, 1.50), 11.50
  end

  def test_that_calculate_tip_rounds
    assert_equal @tip_calc.calculate_tip(11.25, 15), 1.69
  end

  def test_that_calculate_total_rounds
    assert_equal @tip_calc.calculate_total(11.25, 1.259), 12.51
  end
end
