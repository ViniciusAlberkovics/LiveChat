defmodule LiveChatWeb.PageController do
  use LiveChatWeb, :controller

  alias LiveChat.Chats

  def index(conn, _params) do
    messages = Chats.list_messages
    render conn, "index.html", messages: messages
  end
end
