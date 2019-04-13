class AddFkIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :media_items, :bundl_id
  end
end
