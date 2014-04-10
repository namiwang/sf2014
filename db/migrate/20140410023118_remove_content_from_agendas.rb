class RemoveContentFromAgendas < ActiveRecord::Migration
  def change
  	remove_column :agendas, :content, :text
  end
end
