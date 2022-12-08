class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.integer :attending_id
      t.string :biology
      t.string :profile_image

      t.timestamps
    end
  end
end
