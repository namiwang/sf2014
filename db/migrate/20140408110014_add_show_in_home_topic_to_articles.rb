class AddShowInHomeTopicToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :show_in_home_topic, :boolean
  end
end
