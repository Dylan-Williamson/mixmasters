class User < ApplicationRecord
    validates :username, :name, :password, :location, :bio, presence: true
    validates :username, uniqueness: true
    validates :username, length: {maximum: 320}

    has_many :services
    has_many :orders
    has_many :reviews, through: :orders
    has_secure_password
    scope :order_by_rating, -> {order(:rating)}
end
