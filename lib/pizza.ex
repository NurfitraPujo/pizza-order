defmodule PizzaOrder.Pizza do
  defstruct size: struct!(__MODULE__.Size),
            topping: struct!(__MODULE__.Topping)

  alias PizzaOrder.Pizza.Size
  alias PizzaOrder.Pizza.Topping

  def price(%__MODULE__{size: size, topping: topping} = _pizza) do
    Size.price(size) + Topping.price(topping)
  end
end
