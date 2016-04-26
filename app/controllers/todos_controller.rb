class TodosController < ApplicationController
  before_filter :authenticate


  def index
    @todos = Todo.where(email: current_email)
  end

  def new
    @todo = Todo.new
  end

  def create
    todo = Todo.create(todo_params.merge(email: current_email))

    if todo.save 
      todo.update(state: 1)
      flash_message = "All fine!"
      redirect_to todos_path
    else
      redirect_to new_todo_path
      flash_massage = "An error occured"
    end

  end

  private

  def todo_params
      params.require(:todo).permit(:name)
  end

end
