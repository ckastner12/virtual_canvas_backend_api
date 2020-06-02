class CreateAnimateMos < ActiveRecord::Migration[6.0]
    def change
      create_table :animate_mos do |t|
        t.references :user, null: false, foreign_key: true
        t.references :picture, null: false, foreign_key: true
        t.string :color, default: "red"
        t.string :shape, default: "circle"
        t.integer :radius_1, default: 0
        t.integer :radius_2, default: 100
        t.integer :count, default: 2
        t.integer :duration, default: 100
        t.integer :angle, default: 0
        t.integer :stroke_width, default: 5
        t.integer :stagger, default: 0
  
  
  
        t.timestamps
      end
    end
  end