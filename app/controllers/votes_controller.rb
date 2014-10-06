class VotesController < ApplicationController
  def like
    @article = Article.find(params[:id])
    @article.likes.create
    redirect_to :back
    end

  def dislike
    @article = Article.find(params[:id])
    @article.likes.create
    redirect_to :back
  end

  def unlike
    @article = Article.find(params[:id])
    @article.likes.create
    redirect_to :back
  end

  def undislike
    @article = Article.find(params[:id])
    @article.likes.create
    redirect_to :back
  end
end
