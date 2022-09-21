class CreatePvs < ActiveRecord::Migration[6.1]
  def change
    create_table :pvs do |t|
      t.string :employee_details
      t.string :payment_details
      t.string :prepared_by
      t.string :approved_by
      t.string :authorized_by

      t.timestamps
    end
  end
end
