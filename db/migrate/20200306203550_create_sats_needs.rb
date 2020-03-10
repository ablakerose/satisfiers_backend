class CreateSatsNeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :sats_needs do |t|
      t.string :satisfier_id
      t.string :need_id

      t.timestamps
    end
  end
end
