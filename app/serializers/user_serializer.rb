class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :bookmarks
  has_many :pictures
end
