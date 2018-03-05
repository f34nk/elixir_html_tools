defmodule CssTest do
  use ExUnit.Case
  doctest ElixirHtmlTools
  import Meeseeks.CSS

  @html "<div><h1>Hello World</h1></div>"

  test "ModestEx" do
    result = ModestEx.find(@html, "div h1")
    assert result == ["<h1>Hello World</h1>"]
  end

  test "Myhtmlex" do
  end

  test "Floki" do
    result = Floki.find(@html, "div h1")
    assert result == [{"h1", [], ["Hello World"]}]
  end


  test "Meeseeks" do
    result = Meeseeks.parse(@html, :html)
    |> Meeseeks.one(css("div h1"))
    |> Meeseeks.tree()
    assert result == {"h1", [], ["Hello World"]}
  end
end
