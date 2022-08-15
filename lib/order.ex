defmodule PizzaOrder.Order do
  defstruct pizzas: []

  alias PizzaOrder.Pizza

  def total_price(%__MODULE__{pizzas: []} = _order) do
    0.0
  end

  def total_price(%__MODULE__{pizzas: pizzas} = _order) do
    Enum.reduce(pizzas, 0, fn (pizza, acc) -> Pizza.price(pizza) + acc end)
  end

  def list(%__MODULE__{pizzas: []} = _order) do
    "\n"
  end

  def list(%__MODULE__{pizzas: pizzas} = _order) do
    pizzas
    |> Enum.with_index(fn element, index -> {index, element} end)
    |> Enum.reduce("", fn({index, pizza}, fin) -> fin <> "#{index + 1}. #{Pizza.to_s(pizza)} - #{Pizza.price(pizza)}\n" end)
  end
end
