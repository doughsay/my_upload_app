defmodule MyUploadApp.Repo do
  use Ecto.Repo,
    otp_app: :my_upload_app,
    adapter: Ecto.Adapters.Postgres
end
