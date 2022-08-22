class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
