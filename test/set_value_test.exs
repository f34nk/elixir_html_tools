defmodule SetValueTest do
  use ExUnit.Case
  # doctest ElixirHtmlTools
  
  @html "<p><a>Hello World</a></p>"

  test "ModestEx" do
    result = ModestEx.set_attribute(@html, "p a", "href", "https://elixir-lang.org")
    assert result == "<p><a href=\"https://elixir-lang.org\">Hello World</a></p>"
  end

  test "Myhtmlex" do
  end

  test "Floki" do
  end

  test "Meeseeks" do
  end

end
