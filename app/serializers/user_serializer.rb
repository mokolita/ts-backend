class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name

  has_many :locations
  has_many :comments 
end
