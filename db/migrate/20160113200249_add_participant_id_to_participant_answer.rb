class AddParticipantIdToParticipantAnswer < ActiveRecord::Migration
  def change
    add_column :participant_answers, :participant_id, :integer
  end
end
