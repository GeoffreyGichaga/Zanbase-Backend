class AddOrgToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :org, :string
    add_column :users, :function, :string
  end
end
