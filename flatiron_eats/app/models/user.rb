class User < ApplicationRecord
    has_secure_password

    has_many :likes
    has_many :reviews
    has_many :restaurants, through: :likes
end
