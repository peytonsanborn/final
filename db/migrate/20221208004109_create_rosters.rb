class CreateRosters < ActiveRecord::Migration[6.0]
  def change
    create_table :rosters do |t|
      t.integer :event_id
      t.integer :guests_id

      t.timestamps
    end
  end
end
