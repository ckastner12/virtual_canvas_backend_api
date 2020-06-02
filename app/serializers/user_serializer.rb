class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :pictures, include_nested_associations: true
end
