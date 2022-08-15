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

  test "list/1" do
    pizzas = [struct!(Pizza), struct!(Pizza)]
    order = struct!(Order, %{pizzas: pizzas})

    assert order |> Order.list === "1. Medium Pizza with Pepperoni topping - 12.5\n2. Medium Pizza with Pepperoni topping - 12.5\n"
  end

  test "list/1 empty order" do
    order = struct!(Order)

    assert order |> Order.list === "\n"
  end
end
