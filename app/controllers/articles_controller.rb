class ArticlesController < ApplicationController
  def show
    @all = Article.all
    render_resource_data(@all)
  end
  def index
    @all = Article.all
    render_resource_data(@all)
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    render_resource_data(@article)
  end
  private
  def article_params
    params.require(:article).permit(:id, :title, :text)
  end
end

