class CreateItemClasses < ActiveRecord::Migration
  def change
    create_table :item_classes do |t|
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
