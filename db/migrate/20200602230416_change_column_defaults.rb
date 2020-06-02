class ChangeColumnDefaults < ActiveRecord::Migration[6.0]
  def change
    change_column_default :pictures, :background, "255,255,255"

    change_column_default :p5_shapes, :frequency, 0
    change_column_default :p5_shapes, :shape, 0
  end
end
