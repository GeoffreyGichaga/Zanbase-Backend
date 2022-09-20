class AddPersonalIdNumberToUserDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :user_details, :id_number, :integer
  end
end
