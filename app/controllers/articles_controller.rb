class ArticlesController < ApplicationController
  def index
  end

  def show
    @article = Article.find_by(id: params[:id])
  end
end
