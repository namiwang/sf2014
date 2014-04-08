class AddShowInHomeSlideToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :show_in_home_slide, :boolean
  end
end
