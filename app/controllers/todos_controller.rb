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
  end
  def show
    @todos = Todo.find(params[:id])
  end
  private
  def todos_params
    params.require(:todo).permit(:description)
  end
  def set_todos
    @todos = Todo.find(params[:id])
  end
end
