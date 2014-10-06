class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @articles = @articles.where(user_id: params[:user_id]) if params[:user_id]
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = current_user.articles.find(params[:id])
  end

 def create
   @article = current_user.articles.new(article_params)
 
   if @article.save
     redirect_to articles_path
   else
     render 'new'
   end
 end

  def destroy
    @article  = current_user.articles.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end


  def update
    @article = current_user.articles.find(params[:id])

    if @article.update(article_params)
      redirect_to articles_path
    else
      render 'edit'
    end
  end
 
private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
