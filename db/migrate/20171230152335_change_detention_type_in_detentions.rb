class ChangeDetentionTypeInDetentions < ActiveRecord::Migration[5.1]
  def change
    change_column :detentions, :detention_type_id, :string
    rename_column :detentions, :detention_type_id, :detention_type
  end
end
