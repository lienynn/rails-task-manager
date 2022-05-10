class TasksController < ApplicationController
  def create
    task = Task.new(tasks_params)
    Task.save

    Redirect_to task_path(task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
