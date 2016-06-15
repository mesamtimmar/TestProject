class CreateMigrationTest2s < ActiveRecord::Migration
  def change
    create_table :migration_test2s do |t|

      t.string :name
      t.timestamps
    end
  end
end
