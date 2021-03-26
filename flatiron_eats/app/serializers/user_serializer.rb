class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :city

  has_many :likes
  has_many :reviews
  has_many :restaurants, through: :likes
end
