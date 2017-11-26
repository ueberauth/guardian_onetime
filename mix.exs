defmodule GuardianOnetime.Mixfile do
  use Mix.Project

  @version "1.0.0"
  @url "https://github.com/ueberauth/guardian_onetime"
  @maintainers [
    "Daniel Neighman",
    "Sean Callan",
    "Sonny Scroggin",
  ]

  def project do
    [
      app: :guardian_onetime,
      version: @version,
      elixir: "~> 1.5",
      maintainers: @maintainers,
      description: "A single use token implementation for Guardian",
      homepage_url: @url,
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env),
      package: package(),
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp aliases do
    ["test": ["ecto.create --quiet", "ecto.migrate", "test"]]
  end

  defp deps do
    [
      {:guardian, "~> 1.0"},
      {:ecto, "~> 2.2"},
      {:postgrex, "~> 0.13"},
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [
      maintainers: @maintainers,
      licenses: ["MIT"],
      links: %{github: @url},
      files: ~w(lib) ++ ~w(LICENSE mix.exs README.md)
    ]
  end
end
