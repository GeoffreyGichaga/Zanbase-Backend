class AddUserIdToPv < ActiveRecord::Migration[6.1]
  def change
    add_column :pvs, :user_id, :integer
  end
end
