class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :supervisor_id
      t.integer :user_id
      t.string :task_title
      t.string :task_description
      t.string :task_status

      t.timestamps
    end
  end
end
