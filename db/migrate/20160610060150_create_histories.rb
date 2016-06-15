class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.references :account

      t.timestamps
    end
    add_index :histories, :account_id
  end
end
