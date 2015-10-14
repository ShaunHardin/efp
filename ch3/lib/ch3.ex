defmodule Ch3 do
  def currency_calc do
    euros = IO.gets "How many euros are you exchanging? "
    {euros, _remainder} = euros |> String.strip |> Float.parse
    rate = IO.gets "What is the exchange rate? "
    {rate, _remainder2} = rate |> String.strip |> Float.parse
    converted_value = (euros * rate) / 100.0
    IO.puts "#{euros} euros at an exchange rate of #{rate} is #{converted_value} U.S. dollars."
  end
end
