defmodule HelloWorldTest do
  use ExUnit.Case, async: true
  use Mimic

  for i <- 1..1000 do
    test "test today #{i}" do
      #
      # NOTE: The multiple expectations, asserts and test runs are so that we have a higher chance
      # of causing the error in this sample project. You don't need the same kind of setup in an
      # actual codebase.
      #

      assert HelloWorld.utc_today()

      HelloWorld
      |> expect(:utc_today, 10, fn -> %Date{year: 2024, month: 3, day: 1} end)

      assert HelloWorld.utc_today() == ~D[2024-03-01]
      assert HelloWorld.utc_today() == ~D[2024-03-01]
      assert HelloWorld.utc_today() == ~D[2024-03-01]
      assert HelloWorld.utc_today() == ~D[2024-03-01]
      assert HelloWorld.utc_today() == ~D[2024-03-01]

      assert HelloWorld.utc_today() == ~D[2024-03-01]
      assert HelloWorld.utc_today() == ~D[2024-03-01]
      assert HelloWorld.utc_today() == ~D[2024-03-01]
      assert HelloWorld.utc_today() == ~D[2024-03-01]
      assert HelloWorld.utc_today() == ~D[2024-03-01]
    end
  end
end
