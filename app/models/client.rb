class Client < ApplicationRecord 
    has_many :orders
    has_many :reviews, through: :orders
    has_many :engineers, through: :orders
    validates :username, presence: true
    has_secure_password
end
