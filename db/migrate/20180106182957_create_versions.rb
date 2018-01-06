class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      t.integer :detention_id
      t.string :d_type
      t.integer :user_id
      t.datetime :date_due
      t.timestamp :update_date

      t.timestamps
    end
  end
end
