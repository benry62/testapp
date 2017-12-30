class DropDetentionsTypeTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :detention_types
  end
end
