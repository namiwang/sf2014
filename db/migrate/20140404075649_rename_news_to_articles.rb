class RenameNewsToArticles < ActiveRecord::Migration
  def change
  	rename_table :news, :articles
  end
end
