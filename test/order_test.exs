defmodule PizzaOrder.OrderTest do
  use ExUnit.Case
  doctest PizzaOrder.Order

  alias PizzaOrder.Order
  alias PizzaOrder.Pizza

  test "total_price/1 empty order" do
    order = struct!(Order)

    assert order |> Order.total_price === 0.0
  end

  test "total_price/1" do
    pizzas = [struct!(Pizza), struct!(Pizza)]
    order = struct!(Order, %{pizzas: pizzas})

    assert order |> Order.total_price === 25.0
  end
end
