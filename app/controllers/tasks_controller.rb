class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    #@task = Task.new(params[:task])
    # Will raise ActiveModel::ForbiddenAttributesError
    @task = Task.new(task_params)
    @task.save
    redirect_to show_task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def edit
  end

  def update
    # @task.update(params[:task])
    @task.update(task_params)
    redirect_to show_task_path(@task)
  end

  def nothing_to_do

  end

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :difficulty, :duration, :done)
  end

end
