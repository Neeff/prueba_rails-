class TodosController < ApplicationController
  def index
   @todos = Todo.all
  end
  def new
    @todos = Todo.new
  end
  def create
    @todos = Todo.new(todos_params)
    @todos.save
    redirect_to todo_path(@todos.id)
  end
  def show
    @todos = Todo.find(params[:id])
  end
  def edit
    @todos = Todo.find(params[:id])
  end
  def update
    @todos = Todo.find(params[:id])
    @todos.update(todos_params)
    @todos.save
    redirect_to  root_path
  end
  private
  def todos_params
    params.require(:todo).permit(:description)
  end
  def set_todos
    @todos = Todo.find(params[:id])
  end
end
