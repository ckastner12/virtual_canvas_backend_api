class CreateAnimateMos < ActiveRecord::Migration[6.0]
  def change
    create_table :animate_mos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :picture, null: false, foreign_key: true
      t.string :color
      t.string :shape
      t.integer :radius_1
      t.integer :radius_2
      t.integer :count
      t.integer :duration
      t.integer :angle
      t.integer :stroke_width



      t.timestamps
    end
  end
end
