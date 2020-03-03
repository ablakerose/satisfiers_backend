class CreateSatisfiers < ActiveRecord::Migration[6.0]
  def change
    create_table :satisfiers do |t|
      t.date :date_added
      t.date :date_completed
      t.integer :user_id
      t.integer :need_id

      t.timestamps
    end
  end
end
