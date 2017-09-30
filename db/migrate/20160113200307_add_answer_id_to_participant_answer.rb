class AddAnswerIdToParticipantAnswer < ActiveRecord::Migration
  def change
    add_column :participant_answers, :answer_id, :integer
  end
end
