class AddNameColumnToMilestones < ActiveRecord::Migration[7.0]
  def change
    add_column :milestones, :name, :string
  end
end
