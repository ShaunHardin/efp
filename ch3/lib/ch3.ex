defmodule Ch3 do
  def currency_calc do
    euros = IO.gets "How many euros are you exchanging? "
    {euros, _remainder} = euros |> String.strip |> Float.parse

    rate = IO.gets "What is the exchange rate? "
    {rate, _remainder2} = rate |> String.strip |> Float.parse

    converted_value = convert(euros, rate)
    IO.puts "#{euros} euros at an exchange rate of #{rate} is #{converted_value} U.S. dollars."
  end

  def currency_calc2 do
    euros = IO.gets "How many euros are you exchanging? "
    {euros, _remainder} = euros |> String.strip |> Float.parse

    country = IO.gets "What country's currency do you want to exchange to? "
    stripped_country = String.strip(country)
    rate = conversion_rate(stripped_country)

    converted_value = convert(euros, rate)
    IO.puts "#{euros} euros at an exchange rate of #{rate} is #{converted_value} in #{country}'s currency."
  end

  defp convert(starting_value, rate) do
    (starting_value * rate) / 100.0 |> Float.round(2)
  end

  defp conversion_rate(country) do
    country_atom = String.to_atom(country)
    rates = [ US: 114.68, UK: 74.15 ]
    rates[country_atom]
  end
end
