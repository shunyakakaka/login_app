class TasksController < ApplicationController

  before_action :logged_in_user, only: [:edit, :update, :destroy]

  def index
    @tasks = Task.new
  end

  def create
    task = Task.new(task_params)
    task.create
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end

end
