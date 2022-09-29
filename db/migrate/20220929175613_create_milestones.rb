class CreateMilestones < ActiveRecord::Migration[7.0]
  def change
    create_table :milestones do |t|
      t.date :date
      t.string :milestone
      t.text :description
      t.string :image
      t.integer :kid_id

      t.timestamps
    end
  end
end
