class AddRefIntegrity < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key "media_items", "bundls", column: "bundl_id"
  end
end
