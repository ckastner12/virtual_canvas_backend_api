class DropUnnecessaryTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :songs
    drop_table :bookmarks
    drop_table :animate_mos
  end
end
