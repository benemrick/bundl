class AddBundlIdIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :bundls, :id, unique: true
  end
end
