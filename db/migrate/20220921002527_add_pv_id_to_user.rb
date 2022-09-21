class AddPvIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pv_id, :integer
  end
end
