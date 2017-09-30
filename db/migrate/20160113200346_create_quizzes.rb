class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :owner_email
      t.string :access_key
      t.string :access_password

      t.timestamps null: false
    end
  end
end
