class PictureSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :animate_mos
  belongs_to :user
end
