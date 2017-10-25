class AddForeignKeySchoolsDepartmentsAgain < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :departments, :schools
  end
end
