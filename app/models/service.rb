class Service < ApplicationRecord
    validates :title, :description, :price, :requirements, :engineer_id, presence: true

    belongs_to :engineer
    has_many :orders
    has_many :reviews, through: :orders
    has_many :clients, through: :orders
end
