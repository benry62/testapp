class AddIndexToVersions < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :versions, :user_id
    add_foreign_key :versions, :detention_id

    add_index :versions, :user_id
    add_index :versions, :detention_id

  end
end
