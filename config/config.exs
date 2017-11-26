use Mix.Config

config :guardian_onetime, ecto_repos: [GuardianOneTime.Repo]

config :guardian_onetime, GuardianOneTime.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("POSTGRES_USER"),
  password: System.get_env("POSTGRES_PASS"),
  database: "guardian_onetime_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  loggers: []
