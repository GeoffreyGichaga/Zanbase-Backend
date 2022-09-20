class AddAttendanceIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :attendance_id, :integer
  end
end
