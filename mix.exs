defmodule ElixirHtmlTools.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_html_tools_benchmark,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:benchfella, "~> 0.3.0"},
      {:benchee_html, "~> 0.4"},

      {:modest_ex, "~> 1.0.3"},
      {:floki, "~> 0.20.0"},
      # {:html5ever, "~> 0.5.0"},
      {:meeseeks, "0.7.6"},
      {:myhtmlex, "~> 0.2.0"}
      # {:myhtmlex, "~> 0.2.0", runtime: false}
    ]
  end
end