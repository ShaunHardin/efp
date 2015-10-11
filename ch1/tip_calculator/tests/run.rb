#!/usr/bin/env ruby
require 'bundler/setup'
Bundler.require
require_relative '../lib/tip_calculator'

calc = TipCalculator.new()
bill = 10.0
expected_tip = 1.50
tip = calc.calculate_tip(bill, 15)

if tip == expected_tip
  puts 'Tip test passes!'
else
  puts "Failure in test 1: #{tip} not equal to #{expected_tip}."
end

expected_total = 11.50
total = calc.calculate_total(bill, 1.50)

if total == expected_total
  puts 'Total test passes!'
else
  puts 'Oh no! Total test fails!!!!!!'
end

expected_tip = 1.69
bill = 11.25
total = calc.calculate_tip(bill, 15)

if total == expected_tip
  puts 'Second tip test passes!'
else
  puts 'Oh no! Second tip test fails!!!!!!'
end
