class TipCalculator

  def run
    bill_amount = get_bill_amount
    tip_percentage = get_tip_amount

    tip = calculate_tip(bill_amount, tip_percentage)
    total = calculate_total(bill_amount, tip)

    puts "Tip: $#{tip}"
    puts "Total: $#{total}"
  end

  def get_bill_amount
    puts 'How much is the bill?'
    gets.chomp.to_f
  end

  def get_tip_amount
    puts 'What percentage would you like to tip? (e.g. 15 for 15%)'
    gets.chomp.to_f
  end

  def calculate_tip(bill_amount, tip_percentage)
    decimal_tip_percentage = tip_percentage / 100.0
    tip = bill_amount * decimal_tip_percentage
    tip.round(2)
  end

  def calculate_total(bill_amount, tip)
    total = bill_amount + tip
    total.round(2)
  end
end
