class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :name
      t.text :content
      
      t.timestamps
    end
  end
end
