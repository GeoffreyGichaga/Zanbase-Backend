class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.string :date
      t.string :timeIn
      t.string :timeOut
      t.string :activities
      t.string :sign
      t.string :checkedBy

      t.timestamps
    end
  end
end
