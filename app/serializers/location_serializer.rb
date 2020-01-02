class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :address
  belongs_to :user 
  has_many :comments
end
