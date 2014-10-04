class LikesController < ApplicationController
  def create
    @article = Article.find(params[:id])
    @article.likes.create
    redirect_to @article
  end
end
