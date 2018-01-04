class RemoveYearIdFromForms < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :year_id, :integer
    drop_table :years
  end
end
