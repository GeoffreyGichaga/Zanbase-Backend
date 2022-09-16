class AddUserDetailIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_details_id, :integer
  end
end
