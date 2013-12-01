class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :menus
      t.string :name
      t.integer :price
    end
  end
end
