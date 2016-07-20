class ArticlesController < ApplicationController
  
  def new
    @article = Article.new
  end
  
  def create
    #displays what you parameters you pass in the form
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  #function to whitelist the values of article
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
  
  
  
  
end