class CreateDetentionTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :detention_types do |t|
      t.string :name
      t.integer :duration

      t.timestamps
    end
  end
end
