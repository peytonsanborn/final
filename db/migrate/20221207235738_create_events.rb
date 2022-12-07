class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :location
      t.string :despriction
      t.string :event_name
      t.integer :host_id
      t.integer :roster_id
      t.string :image

      t.timestamps
    end
  end
end
