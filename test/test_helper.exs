{:ok, _pid} = GuardianOneTime.Repo.start_link()
Ecto.Adapters.SQL.Sandbox.mode(GuardianOneTime.Repo, :manual)

ExUnit.start()
