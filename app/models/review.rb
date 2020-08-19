class Review < ApplicationRecord
    validates :content, :rating, :engineer_id, :client_id, :service_id, :order_id, presence: true

    belongs_to :service
    belongs_to :order
    belongs_to :engineer
    belongs_to :client
end
