class CreateAnimateMos < ActiveRecord::Migration[6.0]
  def change
    create_table :animate_mos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :picture, null: false, foreign_key: true
      t.integer :loc_x
      t.integer :loc_y

      t.timestamps
    end
  end
end
