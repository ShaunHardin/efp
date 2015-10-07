class TipCalculator

  def run
    puts 'How much is the bill?'
    bill_amount = gets.chomp.to_f
    puts 'What percentage would you like to tip? (use decimal notation)'
    decimal_tip_percentage = gets.chomp.to_f

    tip = calculate_tip(bill_amount, decimal_tip_percentage)
    total = calculate_total(bill_amount, tip)

    puts "Tip: $#{tip}"
    puts "Total: $#{total}"
  end

  def calculate_tip(bill_amount, decimal_tip_percentage)
    bill_amount * decimal_tip_percentage
  end

  def calculate_total(bill_amount, tip)
    bill_amount + tip
  end
end
