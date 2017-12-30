class DropSchoolIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :school_id, :integer
    remove_column :departments, :school_id, :integer
    remove_column :detentions, :school_id, :integer
    remove_column :forms, :school_id, :integer
    remove_column :students, :school_id, :integer
    remove_column :years, :school_id, :integer

    
  end
end
