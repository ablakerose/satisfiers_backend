class AddActivityToSatisfiers < ActiveRecord::Migration[6.0]
  def change
    add_column :satisfiers, :activity, :string
  end
end
