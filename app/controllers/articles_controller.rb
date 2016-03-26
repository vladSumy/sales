class ArticlesController < ApplicationController
  def show
    @all = Article.all
    render_resource_data(@all)
  end
end
