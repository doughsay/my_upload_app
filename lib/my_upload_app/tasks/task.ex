defmodule MyUploadApp.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :title, :string
    field :completed, :boolean, default: false
    field :due_date, :date

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :completed, :due_date])
    |> validate_required([:title, :completed, :due_date])
  end
end
