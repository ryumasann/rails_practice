class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @task = Todo.new(task_params)
    if @task.save
      redirect_to action: 'index'
    else
      render action: 'new'
    end
  end

  def edit
    @todo = Todo.find(params[:id]) # 1.インスタンス変数にセット
  end

  def update
    @todo = Todo.find(params[:id]) # 1.インスタンス変数にセット
    if @todo.update(todo_params)
      redirect_to action: 'index', notice: '変更しました'
    else
      render action: 'new'
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

  def task_params
    params.require(:todo).permit(:title)
  end
end
