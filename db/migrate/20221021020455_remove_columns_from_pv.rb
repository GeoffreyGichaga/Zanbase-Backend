class RemoveColumnsFromPv < ActiveRecord::Migration[6.1]
  def change
    remove_column :pvs, :employee_details
    remove_column :pvs, :payment_details
    remove_column :pvs, :prepared_by
    remove_column :pvs, :approved_by
    remove_column :pvs, :authorized_by
    remove_column :pvs, :date
    remove_column :pvs, :org
    remove_column :pvs, :program
    remove_column :pvs, :function

    

  end
end


