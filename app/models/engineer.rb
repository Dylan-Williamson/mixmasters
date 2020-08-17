class Engineer < ApplicationRecord
    has_many :services
    has_many :orders
    has_many :reviews, through: :orders
    has_many :clients, through: :orders
end
