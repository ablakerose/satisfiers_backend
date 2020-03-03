class Need < ApplicationRecord

    has_many :users, through: :satisfiers
    has_many :satisfiers
end
