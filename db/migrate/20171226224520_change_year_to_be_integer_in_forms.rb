class ChangeYearToBeIntegerInForms < ActiveRecord::Migration[5.1]
  def change
    change_column :forms, :year, :integer
    rename_column :forms, :year, :year_id
    add_foreign_key :forms, :year_id
  end
end
