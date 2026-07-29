defmodule Trinoex.MixProject do
  use Mix.Project

  def project do
    [
      app: :trinoex,
      version: "0.1.0",
      elixir: "~> 1.20",
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
      {:dialyxir, "~> 1.4"},
      {:excoveralls, "~> 0.18.5", only: :test},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
    ]
  end
end
