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
      {:benchee_html, "~> 0.4", only: :dev},
      # {:benchee_csv, "~> 0.7", only: :dev},

      # {:modest_ex, path: "../modest_ex"},
      # {:modest_ex, github: "f34nk/modest_ex"},
      {:modest_ex, "~> 1.0.2"},

      # {:myhtmlex, "~> 0.2.0"},
      {:floki, "~> 0.20.0"},
      {:meeseeks, "0.7.6"},
      # {:html_sanitize_ex, "~> 1.3.0-rc3"}
    ]
  end
end