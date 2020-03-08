class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :subject
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :tests, [:user_id, :created_at]
  end
end
