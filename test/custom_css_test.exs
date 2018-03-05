defmodule CustomCssTest do
  use ExUnit.Case
  doctest ElixirHtmlTools
  import Meeseeks.CSS

  @html "<div><h1>Hello World</h1></div>"

  test "ModestEx" do
  end
  
  test "Myhtmlex" do
  end

  test "Floki" do
    result = Floki.find(@html, "div h1:fl-contains('Hello')")
    assert result == [{"h1", [], ["Hello World"]}]
  end

  defmodule ContainsSelector do
    use Meeseeks.Selector

    alias Meeseeks.Document

    defstruct value: ""

    def match(selector, %Document.Text{} = node, _document, _context) do
      String.contains?(node.content, selector.value)
    end

    def match(_selector, _node, _document, _context) do
      false
    end
  end

  test "Meeseeks" do
    selector = %ContainsSelector{value: "Hello"}
    result = Meeseeks.one(@html, selector)
    |> Meeseeks.tree()
    assert result == "Hello World"
  end
end
