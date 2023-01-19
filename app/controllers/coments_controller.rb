class ComentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article

  def create
    @article.coments.create(comment_params.to_h.merge!({ user_id: current_user.id }))
    redirect_to article_path(@article), notice: 'Comment was successfully created.'
  end

  def destroy
    coment = @article.coments.find(params[:id])
    authorize coment

    coment.destroy
    redirect_to article_path(@article), notice: 'Comment was successfully destroyed.'
  end

  private

  def comment_params
    params.require(:coment).permit(:body)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end
end
