class AddAgendaRefToScheduals < ActiveRecord::Migration
  def change
    add_reference :scheduals, :agenda, index: true
  end
end
