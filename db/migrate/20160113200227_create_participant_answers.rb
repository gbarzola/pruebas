class CreateParticipantAnswers < ActiveRecord::Migration
  def change
    create_table :participant_answers do |t|
      t.integer :response_time

      t.timestamps null: false
    end
  end
end
