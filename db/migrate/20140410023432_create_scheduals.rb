class CreateScheduals < ActiveRecord::Migration
  def change
    create_table :scheduals do |t|
      t.string :time
      t.string :content
      t.string :speaker

      t.timestamp
    end
  end
end
