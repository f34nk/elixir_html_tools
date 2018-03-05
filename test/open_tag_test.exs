defmodule OpenTagTest do
  use ExUnit.Case
  doctest ElixirHtmlTools

  # broken html
  @html "<div><h1>Hello World</div>"

  test "HtmlSanitizeEx" do
    result = HtmlSanitizeEx.html5(@html)
    assert result == "<div><h1>Hello World</h1></div>"
  end

  test "ModestEx" do
    result = ModestEx.serialize(@html)
    assert result == "<html><head></head><body><div><h1>Hello World</h1></div></body></html>"
  end

  test "Myhtmlex" do
    result = Myhtmlex.decode(@html)
    assert result == {"html", [], [{"head", [], []}, {"body", [], [{"div", [], [{"h1", [], ["Hello World"]}]}]}]}
  end

  test "Floki" do
    result = Floki.parse(@html)
    assert result == {"div", [], [{"h1", [], ["Hello World"]}]}
  end

  test "Meeseeks" do
    result = Meeseeks.parse(@html, :html)
    |> Meeseeks.tree()
    assert result == [{"html", [], [{"head", [], []}, {"body", [], [{"div", [], [{"h1", [], ["Hello World"]}]}]} ]} ]
  end
end
