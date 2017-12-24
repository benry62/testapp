class AddFormIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :form_id, :integer
    add_foreign_key :students, :forms
    
    remove_column :students, :form, :string
  end
end
