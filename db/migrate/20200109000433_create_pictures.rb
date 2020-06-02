class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :background, default: "255,255,255"
      t.integer :user_id
      t.integer :mid_mapping_1, default: -100
      t.integer :mid_mapping_2, default: 100
      t.integer :treble_mapping_1, default: 100
      t.integer :treble_mapping_2, default: 250
      t.integer :bass_mapping_1, default: 50
      t.integer :bass_mapping_2, default: 200

      t.timestamps
    end
  end
end
