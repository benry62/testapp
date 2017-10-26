class CreateDetentions < ActiveRecord::Migration[5.1]
  def change
    create_table :detentions do |t|
      t.integer :detention_type_id
      t.integer :student_id
      t.integer :teacher_id
      t.datetime :date_set
      t.datetime :date_due
      t.string :reason
      t.boolean :alert

      t.timestamps
    end
  end
end
