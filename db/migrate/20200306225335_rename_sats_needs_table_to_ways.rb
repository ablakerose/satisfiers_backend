class RenameSatsNeedsTableToWays < ActiveRecord::Migration[6.0]
  rename_table('sats_needs', 'ways')
  
end
