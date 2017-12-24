class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|
      t.string :name
      t.integer :year
      t.integer :school_id

      t.timestamps
    end
  end
end
