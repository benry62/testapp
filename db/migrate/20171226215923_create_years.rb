class CreateYears < ActiveRecord::Migration[5.1]
  def change
    create_table :years do |t|
      t.string :name
      t.integer :school_id

      t.timestamps
    end
  end
end
