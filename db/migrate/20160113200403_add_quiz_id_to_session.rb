class AddQuizIdToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :quiz_id, :integer
  end
end
