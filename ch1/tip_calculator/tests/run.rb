#!/usr/bin/env ruby
require_relative '../lib/tip_calculator'

calc = TipCalculator.new()
expected_tip = 1.50
tip = calc.calculate_tip(10, 0.15)

if tip == expected_tip
  puts 'Tip test passes!'
else
  puts 'Oh no! Tip test fails!!!!!!'
end

expected_total = 11.50
total = calc.calculate_total(10, 1.50)

if total == expected_total
  puts 'Total test passes!'
else
  puts 'Oh no! Total test fails!!!!!!'
end
