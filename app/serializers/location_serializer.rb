class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :latitude, :longitude
  belongs_to :user 
  has_many :comments
end
