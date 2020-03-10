class Need < ApplicationRecord
    has_many :ways
    has_many :satisfiers, through: :ways
    
end