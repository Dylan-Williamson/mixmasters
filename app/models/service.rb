class Service < ApplicationRecord
    validates :title, :description, :price, :requirements, :user_id, presence: true

    belongs_to :user
    has_many :orders
    has_many :reviews, through: :orders
end
