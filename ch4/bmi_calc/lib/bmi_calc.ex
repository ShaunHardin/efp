defmodule BmiCalc do
  def calc1 do
    gather_inputs
    |> cleanse_inputs
    |> calculate_bmi
    |> output_result
  end

  defp gather_inputs do
    height = IO.gets('Height in inches: ') |> String.strip
    weight = IO.gets('Weight in pounds: ') |> String.strip
    %{height: height, weight: weight}
  end

  defp cleanse_inputs(inputs) do
    height = inputs[:height] |> String.to_integer()
    weight = inputs[:weight] |> String.to_integer()
    %{height: height, weight: weight}
  end

  defp calculate_bmi(inputs) do
    height = inputs[:height]
    weight = inputs[:weight]
    (weight/(height*height))*703
  end

  defp output_result(bmi) do
    IO.puts "Your BMI is #{bmi}."
  end
end
