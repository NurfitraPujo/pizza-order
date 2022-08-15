defmodule PizzaOrder.Order do
  defstruct pizzas: []

  alias PizzaOrder.Pizza

  def total_price(%__MODULE__{pizzas: []} = _order) do
    0.0
  end

  def total_price(%__MODULE__{pizzas: pizzas} = _order) do
    Enum.reduce(pizzas, 0, fn (pizza, acc) -> Pizza.price(pizza) + acc end)
  end
end
