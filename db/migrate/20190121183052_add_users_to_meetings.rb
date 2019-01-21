class AddUsersToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :user_id, :integer
  end
end
