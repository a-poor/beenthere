defmodule BeenthereWeb.HelloController do
  use BeenthereWeb, :controller

  def index(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :index)
  end
end
