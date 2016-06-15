class CreateTests < ActiveRecord::Migration
  def up
  drop_table :tests

  create_table :tests do |t|
      t.string  :name
    end

  #  Test.create  name:  'notice'
  end

  def down
    drop_table :tests
  end
end
