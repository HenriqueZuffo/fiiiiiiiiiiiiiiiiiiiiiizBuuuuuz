defmodule FizzBuuzTest do
  use ExUnit.Case
  doctest FizzBuuz

  test "greets the world" do
    assert FizzBuuz.hello() == :world
  end
end
