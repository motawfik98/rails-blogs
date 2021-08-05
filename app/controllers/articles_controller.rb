class ArticlesController < ApplicationController
  def index
    x = {"name": "John", "age": 45}
    render json: x
  end
end
