class AddShapeToAnimateMos < ActiveRecord::Migration[6.0]
  def change
    add_column :animate_mos, :shape, :string
  end
end
