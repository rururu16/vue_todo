class Api::TasksController < ApplicationController
  def index
    @tasks = Task.order('updated_at DESC')
  end

  def create
  end

  def update
  end
end
