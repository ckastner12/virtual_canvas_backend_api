class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :bookmarks, include_nested_associations: true
  has_many :pictures, include_nested_associations: true
end
