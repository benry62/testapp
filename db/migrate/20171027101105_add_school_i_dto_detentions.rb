class AddSchoolIDtoDetentions < ActiveRecord::Migration[5.1]
  def change
    add_column(:detentions, :school_id, :integer)
    add_foreign_key :detentions, :schools
  end
end
