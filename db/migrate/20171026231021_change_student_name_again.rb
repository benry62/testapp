class ChangeStudentNameAgain < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :first_name, :fore_name

  end
end
