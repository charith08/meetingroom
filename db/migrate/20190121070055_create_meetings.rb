class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
    add_index :meetings, [ :user_id, :created_at]

  end
end
