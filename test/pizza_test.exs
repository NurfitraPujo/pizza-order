defmodule PizzaOrder.PizzaTest do
  use ExUnit.Case
  doctest PizzaOrder.Pizza

  alias PizzaOrder.Pizza

  test "price/1" do
    pizza = struct!(Pizza)
    
    assert pizza |> Pizza.price === 12.5
  end
end
