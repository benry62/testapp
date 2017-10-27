class ReNameAlerttoComplete < ActiveRecord::Migration[5.1]
  def change
    rename_column :detentions, :alert, :completed
  end
end
