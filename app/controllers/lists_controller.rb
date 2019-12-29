class ListsController < ApplicationController
  def index
    @lists = current_user.lists.where(completed: false)
    @list = List.new
    @list.user = current_user
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save
      redirect_to lists_path
    else
      flash[:notice] = "Your list couldn't be saved, please try again"
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  def archives
    @lists = current_user.lists.where(completed: true)
  end

  private

  def list_params
    params.require(:list).permit(:title, :user_id)
  end

end
