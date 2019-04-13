class CreateBundls < ActiveRecord::Migration[5.2]
  def change
    create_table :bundls do |t|
      t.string :title
      t.text :description
      t.string :color

      t.timestamps
    end
  end
end
