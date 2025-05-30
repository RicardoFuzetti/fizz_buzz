defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns a list of evaluated numbers" do
      expected_result = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}

      assert FizzBuzz.build("numbers.txt") == expected_result
    end

    test "when am invalid file is provided, returns an error" do
      expected_result = {:error, "Error reading file: enoent"}

      assert FizzBuzz.build("invalid.txt") == expected_result
    end
  end
end
