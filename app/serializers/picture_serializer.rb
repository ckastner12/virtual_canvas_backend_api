class PictureSerializer < ActiveModel::Serializer
  attributes :id, :title, :background, :mid_mapping_1, :mid_mapping_2, :treble_mapping_1, :treble_mapping_2, :bass_mapping_1, :bass_mapping_2, :p5_shapes
  has_many :animate_mos
  has_many :p5_shapes
  has_many :songs
  belongs_to :user
end
