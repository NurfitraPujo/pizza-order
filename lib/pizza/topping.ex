defmodule PizzaOrder.Pizza.Topping do
  defstruct value: "Pepperoni"

  def price(%__MODULE__{value: "Pepperoni"} = _topping) do
    2.5
  end

  def price(%__MODULE__{value: "Meat Lover"} = _topping) do
    2.5
  end

  def price(%__MODULE__{value: "Cheesy Meat"} = _topping) do
    3.5
  end
end
