class AddTestedToTests < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :tested_id, :integer
    add_column :tests, :tested_at, :datetime
  end
end
