class AddDeletedAtToDepositAddresses < ActiveRecord::Migration[8.0]
  def change
    add_column :deposit_addresses, :deleted_at, :datetime
    add_index :deposit_addresses, :deleted_at
  end
end
