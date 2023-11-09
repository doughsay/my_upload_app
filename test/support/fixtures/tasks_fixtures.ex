defmodule MyUploadApp.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MyUploadApp.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        completed: true,
        due_date: ~D[2023-11-08],
        title: "some title"
      })
      |> MyUploadApp.Tasks.create_task()

    task
  end
end
