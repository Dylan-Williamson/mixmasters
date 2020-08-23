class User < ApplicationRecord
    validates :username, :name, :location, :bio, presence: true
    has_many :services
    has_many :orders
    has_many :reviews, through: :orders
    has_secure_password
end
