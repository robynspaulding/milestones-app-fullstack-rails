class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :familytrees, :realtionship_to_user, :relationship_to_user 
  end
end
