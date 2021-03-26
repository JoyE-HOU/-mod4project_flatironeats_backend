class Restaurant < ApplicationRecord
    has_many :likes
    has_many :reviews
    has_many :users, through: :likes
end
