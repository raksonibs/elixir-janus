defmodule Janus.Mixfile do
  use Mix.Project

  def project do
    [
      app: :janus,
      version: "0.1.0",
      elixir: "~> 1.3",
      elixirc_paths: elixirc_paths(Mix.env),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      name: "Janus",
      source_url: "https://github.com/ndarilek/elixir-janus",
      homepage_url: "https://github.com/ndarilek/elixir-janus",
      docs: [
        main: "Janus",
        extras: ["README.md"]
      ]
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 1.5.1"},
      {:poison, "~> 4.0.1"},
      {:con_cache, "~> 0.12.0"},
      {:ex_doc, "~> 0.14", only: :dev},
      {:bypass, "~> 0.1", only: :test},
      {:hackney, "~> 1.13.0"}
    ]
  end

end
