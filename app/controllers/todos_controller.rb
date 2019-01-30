class TodosController < ApplicationController
before_action :set_todos , only: [:show, :edit, :update, :destroy, :complete]
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
  end
  def edit
  end
  def update
    @todos.update(todos_params)
    @todos.save
    redirect_to  root_path
  end
  def destroy
    @todos.destroy
    redirect_to root_path
  end
  def complete
    @todos.completed = true
    @todos.save
    redirect_to root_path
  end
  def list
    @completed = Todo.where(completed: true)
    @incomplete = Todo.where(completed: false)
  end
  private
  def todos_params
    params.require(:todo).permit(:description)
  end
  def set_todos
    @todos = Todo.find(params[:id])
  end
end
