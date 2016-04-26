class CompletionsController < ApplicationController
  def create
    # touch takes the timestamp, assigns it to our value and saves. 
    current_user.todos.find(params[:todo_id]).touch :completed_at
    redirect_to todos_path
  end
end