class RemoveRosterIdFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :roster_id
  end
end
