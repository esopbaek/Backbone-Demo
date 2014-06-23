class Api::TodosController < ApplicationController
  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render "todos/show"
    else
      render :json => @todo.errors, status: :unprocessable_entity
    end
  end


  def index
    @todos = Todo.all
    render "todos/todos"
  end

  def show
    @todo = Todo.find(params[:id])
    @comments = @todo.comments
    render "todos/show"
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update_attributes(todo_params)
      render "todos/show"
    else
      render :json => @todo.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @todo = Todo.find(params[:id])

    if @todo.destroy
      render :json => @todo
    else
      raise "WTF?"
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:title)
  end
end
