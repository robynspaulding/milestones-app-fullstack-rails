class CreateFamilytrees < ActiveRecord::Migration[7.0]
  def change
    create_table :familytrees do |t|
      t.string :name
      t.string :realtionship_to_user
      t.date :birthday
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
