class ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: articles
  end

  def show
    article = Article.find(params[:id])
    render json: article
  end

  def create
    article = Article.new(article_params)
    if article.save
      render json: article
    else
      render json: {
        message: "bad request, invalid format",
        status: 400,
        errors: article.errors,
      }
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
