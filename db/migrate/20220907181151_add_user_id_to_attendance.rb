class AddUserIdToAttendance < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :user_id, :integer
  end
end
