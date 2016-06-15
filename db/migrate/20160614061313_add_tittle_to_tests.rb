class AddTittleToTests < ActiveRecord::Migration
  def change
    add_column :tests, :tittle, :string
  end
end
