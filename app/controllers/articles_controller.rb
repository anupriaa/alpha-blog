class ArticlesController < ApplicationController
  
  def new
    @article = Article.new
  end
  
  def create
    #displays what you parameters you pass in the form
    render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_to article_show(@article)
  end
  
  #function to whitelist the values of article
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
  
end