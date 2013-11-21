class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menuitem do |t|
      t.belongs_to :menu
      t.string :item_name
      t.integer :price
      t.timestamps
    end
  end
end
