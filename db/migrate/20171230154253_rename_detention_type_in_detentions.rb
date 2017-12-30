class RenameDetentionTypeInDetentions < ActiveRecord::Migration[5.1]
  def change
    rename_column :detentions, :detention_type, :d_type
  end
end
