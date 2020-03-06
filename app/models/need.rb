class Need < ApplicationRecord
    has_many :satisfiers
    has_many :users, through: :satisfiers
    
end
