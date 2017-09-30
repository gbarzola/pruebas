class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title
      t.integer :row_order

      t.timestamps null: false
    end
  end
end
