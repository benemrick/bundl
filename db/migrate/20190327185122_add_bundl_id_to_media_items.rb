class AddBundlIdToMediaItems < ActiveRecord::Migration[5.2]
  def change
    add_column :media_items, :bundl_id, :integer
  end
end
