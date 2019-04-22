class RemoveColorColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :bundls, :color
  end
end
