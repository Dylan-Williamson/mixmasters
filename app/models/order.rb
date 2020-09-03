class Order < ApplicationRecord
    validates :email, :user_id, :service_id, presence: true

    belongs_to :user
    belongs_to :service
    has_one :review
end
