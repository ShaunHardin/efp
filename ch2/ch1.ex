defmodule Ch1 do
  def ex1 do
    name = IO.gets "What is your name?\n"
    stripped_name = name |> String.strip
    IO.puts "Hello, " <> stripped_name <> ", nice to meet you!"
  end
end
