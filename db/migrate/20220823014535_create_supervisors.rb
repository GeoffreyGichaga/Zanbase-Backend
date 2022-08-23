class CreateSupervisors < ActiveRecord::Migration[6.1]
  def change
    create_table :supervisors do |t|
      t.string :name
      t.string :role
      t.string :department

      t.timestamps
    end
  end
end
