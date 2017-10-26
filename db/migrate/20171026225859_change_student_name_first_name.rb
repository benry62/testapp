class ChangeStudentNameFirstName < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :name, :last_name
    add_column :students, :first_name, :string
  end
end
