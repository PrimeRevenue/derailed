class CreateCustomers < ActiveRecord::Migration[4.2]
  def change
    create_table :customers do |t|
      t.string :fname
      t.string :lname

      t.timestamps null: false
    end
  end
end
