defmodule PizzaOrder.Pizza.ToppingTest do
  use ExUnit.Case
  doctest PizzaOrder.Pizza.Topping

  alias PizzaOrder.Pizza.Topping

  test "price/1 'Pepperoni'" do
    topping = %Topping{value: "Pepperoni"}

    assert topping |> Topping.price === 2.5
  end

  test "price/1 'Meat Lover'" do
    topping = %Topping{value: "Meat Lover"}

    assert topping |> Topping.price === 2.5
  end

  test "price/1 'Cheesy Meat'" do
    topping = %Topping{value: "Cheesy Meat"}

    assert topping |> Topping.price === 3.5
  end
end
