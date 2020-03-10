class RemoveNeedIdFromSatisfiersTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :satisfiers, :need_id, :integer
  end
end
