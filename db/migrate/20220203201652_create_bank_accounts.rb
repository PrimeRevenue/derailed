class CreateBankAccounts < ActiveRecord::Migration[4.2]
  def change
    create_table :bank_accounts do |t|
      t.string :account_type
      t.float :balance
      t.integer :customer_id

      t.timestamps null: false
      t.index :customer_id
    end
  end
end
