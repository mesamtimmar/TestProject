class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

    t.references :prefect, index: true

      t.timestamps
    end
  end
end
