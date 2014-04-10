class ArticlesController < ApplicationController
  def index
  	@articles = Article.order(updated_at: :desc).page( params[:page] || 1 )
  end

  def show
    @article = Article.find_by(id: params[:id])
  end
end
