class AddVersionCountToVersions < ActiveRecord::Migration[5.1]
  def change
    add_column :versions, :version_count, :integer
  end
end
