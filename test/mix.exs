defmodule Test.MixProject do
  use Mix.Project

  def project do
    [
      app: :test,
      version: "0.1.0",
      elixir: "~> 1.6-rc",
      start_permanent: Mix.env() == :prod,
      dialyzer: [plt_add_apps: [:mix]],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 0.5.1", only: [:dev], runtime: false},
      {:monadex, "~> 1.1"},
      {:httpoison, "~> 0.13.0"},
      {:credo, "~> 0.9.0-rc1", only: [:dev, :test], runtime: false}
    ]
  end
end
