class Service < ApplicationRecord
    belongs_to :user
    has_many :orders
    has_many :reviews, through: :orders
    validates :title, :description, :price, :requirements, :user_id, presence: true
    
    scope :order_by_price, -> {order(:price)}
end
