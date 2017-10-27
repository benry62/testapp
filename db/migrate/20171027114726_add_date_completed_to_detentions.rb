class AddDateCompletedToDetentions < ActiveRecord::Migration[5.1]
  def change
    add_column :detentions, :date_completed, :datetime
  end
end
