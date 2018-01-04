class AddYearToForms < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :year, :integer
  end
end
