class ArticlesController < ApplicationController
  
  @article.user = User.first
  
 
  def user
  @article.user = User.first
  end
  
  def new
   @article = Article.new
  end
  
  def create
    @article.user = User.first
  end
end  

  def show
   
  end
 
  def edit
  
  end
 
  def update
  
  if @article.update(article_params)
   flash[:notice] = "Article was updated"
   redirect_to article_path(@article)
  else
   flash[:notice] = "Article was not updated"
   render 'edit'
  end
 end
 
   
  def destroy
  
   @article.destroy
   flash[:notice] = "Article was deleted"
   redirect_to articles_path
  end
  
  private
    def set_article
     @article = Article.find(params[:id])
    end  
	
  private
    def article_params
	 params.require(:article).permit(:title, :description)
	end


end

