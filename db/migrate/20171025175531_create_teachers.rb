class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :title
      t.integer :department_id
      t.integer :status_id

      t.timestamps
    end
  end
end
