class Client < ApplicationRecord
    has_many :orders
    has_many :engineers, through: :orders
end
