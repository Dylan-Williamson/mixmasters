class User < ApplicationRecord
    validates :username, :name, :location, :bio, presence: true
    validates :username, uniqueness: true
    validates :username, length: {maximum: 15, message: "Username: 15 character maximum"}
    validates :username, format: { with: /\A[a-zA-Z0-9\s]+\z/i, message: "Username: Must only contain letters and numbers." }


    has_many :services
    has_many :orders
    has_many :reviews, through: :orders
    has_secure_password
    scope :order_by_rating, -> {order(:rating)}
end
