class AddRoomsToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :room_id, :integer
  end
end
