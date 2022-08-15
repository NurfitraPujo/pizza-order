defmodule PizzaOrder.Pizza.SizeTest do
  use ExUnit.Case
  doctest PizzaOrder.Pizza.Size

  alias PizzaOrder.Pizza.Size

  test "price/1 small size 'S'" do
    size = %Size{value: "S"}

    assert size |> Size.price === 7.5
  end

  test "price/1 medium size 'M'" do
    size = %Size{value: "M"}

    assert size |> Size.price === 10.0
  end

  test "price/1 large size 'L'" do
    size = %Size{value: "L"}

    assert size |> Size.price === 15.0
  end
end
