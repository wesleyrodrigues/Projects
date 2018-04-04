defmodule TaskAgent.Supervisor.GenSupervisor do
  use Supervisor
  alias TaskAgent.Supervisor.GenGenServer

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg, name: GenSupervisor)
  end

  def init(arg) do
    Supervisor.init([{GenGenServer, arg}], strategy: :one_for_one)
  end

  def kill do
    Process.exit(self(), :kill)
  end
end
