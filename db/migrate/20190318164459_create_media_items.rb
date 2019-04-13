class CreateMediaItems < ActiveRecord::Migration[5.2]
  def change
    create_table :media_items do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :source
      t.timestamps
    end
    add_index :media_items, :id, unique: true
  end
end
