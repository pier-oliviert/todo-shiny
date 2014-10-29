class TodosController < ApplicationController
  def index
    @todos = Todo.session(session.id).active.order('created_at DESC')
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.session_id = session.id
    @todo.save!
    respond_to do |format|
      format.js
      format.html do
        redirect_to :todos
      end
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.done = true
    @todo.save!
    respond_to do |format|
      format.js
      format.html do
        redirect_to :todos
      end
    end
  end

  protected

  def todo_params
    params.require(:todo).permit(:title)
  end
end
