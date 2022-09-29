class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :image_url
      t.string :description
      t.date :date
      t.integer :kid_id

      t.timestamps
    end
  end
end
