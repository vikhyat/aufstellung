class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :item_class
      t.references :person
      t.references :transaction

      t.timestamps
    end
    add_index :items, :item_class_id
    add_index :items, :person_id
    add_index :items, :transaction_id
  end
end
