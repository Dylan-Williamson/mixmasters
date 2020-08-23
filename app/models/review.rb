class Review < ApplicationRecord
    validates :content, :rating, :user_id, :service_id, :order_id, presence: true

    belongs_to :service
    belongs_to :order
    belongs_to :user
end
