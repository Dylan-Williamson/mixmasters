class User < ApplicationRecord
    validates :username, :name, :password, :location, :bio, presence: true
    validates :username, uniqueness: true
    validates :username, length: {maximum: 320}

    has_many :services
    has_many :orders, through: :services
    has_many :reviews
    has_secure_password
    scope :order_by_rating, -> {order(:rating)}
end

