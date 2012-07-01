class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :item_class
      t.references :person
      t.references :bill

      t.timestamps
    end
    add_index :items, :item_class_id
    add_index :items, :person_id
    add_index :items, :bill_id
  end
end
