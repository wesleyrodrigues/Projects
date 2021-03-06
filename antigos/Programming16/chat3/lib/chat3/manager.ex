defmodule Chat3.Manager do
  use GenServer
  @main Manager

  #######################################
  #        API Externa - Manager        #
  #######################################

  def start_link(_) do
    GenServer.start_link(__MODULE__, :no_args, name: @main)
  end

  def show do
    IO.inspect(self())
    GenServer.call(@main, :show)
  end

  ########################################
  # Implementação do GenServer - Manager #
  ########################################

  def init(:no_args) do
    {:ok, %{}}
  end

  def handle_call(:show, _from, map) do
    {:reply, map, map}
  end

  def handle_info({:new_user, new_map}, _map) do
    {:noreply, new_map}
  end
end

# map["Wesley"]
