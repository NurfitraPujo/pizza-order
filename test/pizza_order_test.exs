defmodule PizzaOrderTest do
  use ExUnit.Case
  doctest PizzaOrder

  test "greets the world" do
    assert PizzaOrder.hello() == :world
  end
end
