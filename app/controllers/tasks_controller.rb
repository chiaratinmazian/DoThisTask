class TasksController < ApplicationController
  before_action :set_list

  def index
    @tasks = @list.tasks
    @task = Task.new
  end

  def create
    @task = Task.new(params_task)
    @task.list = @list
    if @task.save
      redirect_to list_tasks_path(@list)
    else
      flash.now[:notice] = "Your task couldn't be saved, please try again"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to list_tasks_path(@list)
  end

  def complete
    @task = Task.find(params[:id])
    @task.state = 'done'
    if @task.save
      flash.now[:notice] = "Your task was completed"
      @list = @task.list
      pending = @list.tasks.reject { |task|  task.state == 'done'}
        if pending.empty?
          @list.update(completed: true, completed_at: Time.now)
          flash.now[:notice] = "Congratulations, you successfully completed all of the tasks' list !"
          redirect_to list_tasks_path(@list)
        end
    else
      flash.now[:notice] = "Your task cannot be completed"
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def params_task
    params.require(:task).permit(:content, :state, :list_id)
  end
end
