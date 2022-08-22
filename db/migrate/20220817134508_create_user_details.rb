class CreateUserDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :user_details do |t|
      t.string :name_on_account
      t.string :bank_name
      t.string :account_number
      t.string :bank_code
      t.string :branch_code
      t.string :telephone_number
      t.integer :user_id

      t.timestamps
    end
  end
end
