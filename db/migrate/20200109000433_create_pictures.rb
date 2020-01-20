class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :background, default: "0,0,0"
      t.integer :user_id

      t.timestamps
    end
  end
end
