class RemoveAttributes < ActiveRecord::Migration
  def up
  	remove_column :tests, :tittle
  end

  def down
  	add_column :tests, :tittle, :string
  end
end
