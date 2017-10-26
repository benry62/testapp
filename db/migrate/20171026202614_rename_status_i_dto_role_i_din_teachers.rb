class RenameStatusIDtoRoleIDinTeachers < ActiveRecord::Migration[5.1]
  def change
      rename_column :teachers, :role_id, :role_id
  end
end
