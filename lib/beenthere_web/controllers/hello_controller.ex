defmodule BeenthereWeb.HelloController do
  use BeenthereWeb, :controller

  # def index(conn, _params) do
  #   # The home page is often custom made,
  #   # so skip the default app layout.
  #   render(conn, :index)
  # end

  def index(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    # |> put_flash(:error, "Let's pretend we have an error.")
    |> render(:index)
  end

  # def show(conn, %{"messenger" => messenger}) do
  #   # The home page is often custom made,
  #   # so skip the default app layout.
  #   render(conn, :show, messenger: messenger)
  # end

  def show(conn, %{"messenger" => messenger}) do
    # The home page is often custom made,
    # so skip the default app layout.
    conn
    |> put_flash(:info, "Redirecting from #{messenger}!")
    |> redirect(to: "/")
  end

  # def show(conn, %{"messenger" => messenger}) do
  #   # The home page is often custom made,
  #   # so skip the default app layout.
  #   json(conn, %{
  #     "message" => "Hello #{messenger}!"
  #   })
  # end
end
