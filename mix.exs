defmodule HaProxy.MixProject do
  use Mix.Project

  def project do
    [
      app: :ha_proxy,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {HaProxy.Supervisor, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, ">=0.0.0"},
      {:cowboy, ">=0.0.0"}
    ]
  end
end
