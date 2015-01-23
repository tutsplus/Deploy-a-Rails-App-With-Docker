class CommentsController < ApplicationController
  def create
    @article = Article.find params[:article_id]
    @comment = @article.comments.build comment_params

    if @comment.save
      redirect_to @article, notice: "Thank you for posting the comment."
    else
      redirect_to @article, alert: "Something went wrong."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :email, :body)
  end
end
