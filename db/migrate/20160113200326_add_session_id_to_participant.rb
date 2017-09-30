class AddSessionIdToParticipant < ActiveRecord::Migration
  def change
    add_column :participants, :session_id, :integer
  end
end
