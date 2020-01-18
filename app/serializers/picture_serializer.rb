class PictureSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :animate_mos
  has_many :p5_shapes
  belongs_to :user
end
