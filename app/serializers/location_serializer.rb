class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :map_coords

  belongs_to :user 
  has_many :comments
end
