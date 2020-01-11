class PictureSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :animate_mos
  belongs_to :creator, class_name: "User"
end
