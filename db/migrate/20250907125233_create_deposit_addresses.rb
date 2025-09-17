class CreateDepositAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :deposit_addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.decimal :balance

      t.timestamps
    end
  end
end
