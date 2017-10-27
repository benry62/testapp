class RenameTeachersToStaff < ActiveRecord::Migration[5.1]
  def change
    rename_table 'teachers', 'users'
    rename_column :detentions, :teacher_id, :user_id
  end
end
