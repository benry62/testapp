class AddYearToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :year, :integer
    rename_column :students, :year_group, :class

  end
end
