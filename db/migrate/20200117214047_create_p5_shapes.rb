class CreateP5Shapes < ActiveRecord::Migration[6.0]
  def change
    create_table :p5_shapes do |t|
      t.references :picture, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :fill
      t.integer :frequency
      t.string :stroke
      t.integer :type
      t.integer :width, default: 5
      t.integer :height, default: 5
      t.integer :amount, default: 1
      t.integer :orbit, default: 0
      t.integer :spin, default: 0

      t.timestamps
    end
  end
end