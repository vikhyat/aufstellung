class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :customer_name
      t.integer :amount_paid

      t.timestamps
    end
  end
end
