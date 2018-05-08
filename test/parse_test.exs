defmodule ParseTest do
  use ExUnit.Case
  # doctest ElixirHtmlTools
  
  @html "<h1>Hello World</h1>"

  test "ModestEx" do
    result = ModestEx.serialize(@html)
    assert result == "<html><head></head><body><h1>Hello World</h1></body></html>"
  end

  test "TidyEx" do
    result = TidyEx.parse(@html)
    assert result == "<h1>Hello World</h1>"
  end

  test "Myhtmlex" do
    result = Myhtmlex.decode(@html)
    assert result == {"html", [], [{"head", [], []}, {"body", [], [{"h1", [], ["Hello World"]}]}]}
  end

  test "Floki" do
    result = Floki.parse(@html)
    assert result == {"h1", [], ["Hello World"]}
  end

  test "Meeseeks" do
    result = Meeseeks.parse(@html, :html)
    |> Meeseeks.tree()
    assert result == [{"html", [], [{"head", [], []}, {"body", [], [{"h1", [], ["Hello World"]}]}]}]
  end

end
