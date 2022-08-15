defmodule PizzaOrder.Pizza.Size do
  defstruct value: "M"

  def price(%__MODULE__{value: "S"} = _size) do
    7.5
  end

  def price(%__MODULE__{value: "M"} = _size) do
    10.0
  end

  def price(%__MODULE__{value: "L"} = _size) do
    15.0
  end
end
