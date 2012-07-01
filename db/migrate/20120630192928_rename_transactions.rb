class RenameTransactions < ActiveRecord::Migration
  def change
      rename_table :bills, :bills
  end 
end
