class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    comment = article.comments.create(comment_params)
    render json: comment
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
