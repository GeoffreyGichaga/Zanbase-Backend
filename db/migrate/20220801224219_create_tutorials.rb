class CreateTutorials < ActiveRecord::Migration[6.1]
  def change
    create_table :tutorials do |t|
      t.string :image_url
      t.string :title
      t.string :description
      t.string :video_url

      t.timestamps
    end
  end
end
