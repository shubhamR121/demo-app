class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @ability = Ability.new(current_user) 
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @article.images.build
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = current_user.articles.create(article_params)
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
     
  end

  def verified
    @article = Article.find(params[:id])
    @article.update_columns(verify: true)
    @articles = Article.all

    respond_to do |format|
     format.html do
      redirect_to articles_path 
     end 
     format.js
    end
  end

  def update

    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end


  def destroy

    @articles = Article.all
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html
      format.js {render :layout => false}
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, images_attributes: [:name,:_destroy])
  end
  
end
