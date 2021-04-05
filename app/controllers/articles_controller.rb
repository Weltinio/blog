class ArticlesController < ApplicationController
  def home
  end
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    if article.update(params.require(:article).permit(:title, :body))
      redirect_to articles_path
    else
      render :new
    end
  end

  def delete
    article = Article.find(params[:id])
    article.destroy
    redirect_to articles_path
  end

  def create
    @article = Article.create(params.require(:article).permit(:title, :body))
    if @article.save 
      redirect_to articles_path      
    else
      render :new
    end
  end
end
