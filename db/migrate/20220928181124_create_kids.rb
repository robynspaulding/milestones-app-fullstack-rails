class CreateKids < ActiveRecord::Migration[7.0]
  def change
    create_table :kids do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :image

      t.timestamps
    end
  end
end
