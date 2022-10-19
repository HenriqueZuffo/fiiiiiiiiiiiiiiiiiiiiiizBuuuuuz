defmodule FizzBuuzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected =
        {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, :buzz, :fizzBuzz, :buzz, :fizzBuzz, :buzz, :buzz]}

      assert FizzBuuz.build("number.txt") == expected
    end

    test "when a invalid file is provided, returns the converted list" do
      expected = {:error, "Ocorreu um erro ao ler o arquivo: enoent"}
      assert FizzBuuz.build("numb.txt") == expected
    end
  end
end
