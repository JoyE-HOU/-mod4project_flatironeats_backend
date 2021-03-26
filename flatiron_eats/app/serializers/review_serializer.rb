class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_id, :user_id, :content, :rating

  belongs_to :user
  belongs_to :restaurant
end
