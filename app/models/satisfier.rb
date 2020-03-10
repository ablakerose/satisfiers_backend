class Satisfier < ApplicationRecord
    
    belongs_to :user
    has_many :ways
    has_many :needs, through: :ways
    
    validates :activity, presence: true
end
