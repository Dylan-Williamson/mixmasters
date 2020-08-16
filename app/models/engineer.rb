class Engineer < ApplicationRecord
    has_many :services, :orders
    has_many :clients, through: :orders
end
