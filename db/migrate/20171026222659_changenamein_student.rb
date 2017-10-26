class ChangenameinStudent < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :class, :form

  end
end
