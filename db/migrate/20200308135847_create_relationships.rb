class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :tester_id
      t.integer :tested_id

      t.timestamps
    end
    add_index :relationships, :tester_id
    add_index :relationships, :tested_id
    add_index :relationships, [:tester_id, :tested_id], unique: true
  end
end
