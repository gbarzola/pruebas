class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :email
      t.string :authorization_key
      t.string :authorization_password
      t.string :name
      t.integer :points

      t.timestamps null: false
    end
  end
end
