class TodosController < ApplicationController
  before_filter :authenticate


  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    todo = current_user.todos.create(todo_params)

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
