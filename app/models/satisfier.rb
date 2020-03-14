class Satisfier < ApplicationRecord
    
    belongs_to :user
    has_many :ways
    has_many :needs, through: :ways, dependent: :destroy
    #to avoid having dependent needs floating around in the database
    
    
    validates :activity, presence: true
end
