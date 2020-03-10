class AddValueToSatisfiers < ActiveRecord::Migration[6.0]
  def change
    add_column :satisfiers, :value, :integer
  end
end
