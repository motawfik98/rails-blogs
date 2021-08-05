class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    comment = article.comments.create(comment_params)
    render json: comment
  end

  def destroy
    article = Article.find(params[:article_id])
    comment = article.comments.find(params[:id])
    comment.destroy
    render json: {
      status: 200,
      message: "Success"
    }
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
