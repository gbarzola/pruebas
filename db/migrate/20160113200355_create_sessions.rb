class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :access_key
      t.datetime :starting_date
      t.integer :row_order
      t.integer :current_question_index

      t.timestamps null: false
    end
  end
end
