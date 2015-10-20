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
    IO.puts "#{euros} euros at an exchange rate of #{rate} is #{converted_value} in #{stripped_country}'s currency."
  end

  def currency_calc3 do
    usd = IO.gets "How many USD are you exchanging? "
    {usd, _remainder} = usd |> String.strip |> Float.parse

    country = IO.gets "What currency do you want to exchange to? (e.g. EUR, AUD, etc.) "
    stripped_country = String.strip(country)
    rate = api_conversion_rate(stripped_country)

    converted_value = convert(usd, rate)
    IO.puts "#{usd} USD at an exchange rate of #{rate} is #{converted_value} in #{stripped_country}'s currency."
  end

  defp convert(starting_value, rate) do
    (starting_value * rate) / 100.0 |> Float.round(2)
  end

  defp conversion_rate(country) do
    country_atom = String.to_atom(country)
    rates = [ USD: 114.68, GBP: 74.15 ]
    rates[country_atom]
  end

  defp api_conversion_rate(country) do
    res = HTTPotion.get "https://openexchangerates.org/api/latest.json?app_id=58a45128b15b4afcbdabbf0742a28418"
    {:ok, json} = JSX.decode(res.body)
    json["rates"][country] * 100
  end
end
