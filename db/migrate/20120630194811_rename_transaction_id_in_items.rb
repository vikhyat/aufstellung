class RenameTransactionIdInItems < ActiveRecord::Migration
  def change
    rename_column :items, :transaction_id, :bill_id
  end
end
