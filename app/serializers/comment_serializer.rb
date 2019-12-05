class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content

  belongs_to :user
  belongs_to :location
end
