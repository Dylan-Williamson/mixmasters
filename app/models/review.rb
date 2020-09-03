class Review < ApplicationRecord
    validates :content, :rating, :user_id, :service_id, :order_id, presence: true
    validates :rating, :inclusion =>{:in => 1..5}
    
    belongs_to :service
    belongs_to :order
    belongs_to :user
end
