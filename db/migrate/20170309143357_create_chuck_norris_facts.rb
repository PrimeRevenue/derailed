class CreateChuckNorrisFacts < ActiveRecord::Migration[4.2]
  def change
    create_table :chuck_norris_facts do |t|
      t.string :fact
      t.integer :karatepower

      t.timestamps null: false
    end
  end
end
