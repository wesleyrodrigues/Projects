defmodule Conditions.MixProject do
  use Mix.Project

  def project do
    [
      app: :conditions,
      version: "0.1.0",
      elixir: "~> 1.6-rc",
      start_permanent: Mix.env() == :prod,
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
      #{ :hackney, github: "benoitc/hackney" },
      { :httpoison, "~> 0.13.0" },
      {:poison, "~> 3.1"}
    ]
  end
end
