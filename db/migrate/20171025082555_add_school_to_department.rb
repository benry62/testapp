class AddSchoolToDepartment < ActiveRecord::Migration[5.1]
  def change
    add_column(:departments, :school_id, :integer)
    add_foreign_key :departments, :schools
  end
end
