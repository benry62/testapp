class AddSchoolIDtoDepartments < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :schools, :departments
  end
end
