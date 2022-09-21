class AddDateToPv < ActiveRecord::Migration[6.1]
  def change
    add_column :pvs, :date, :string
    add_column :pvs, :org, :string
    add_column :pvs, :program, :string
    add_column :pvs, :function, :string
  end
end
