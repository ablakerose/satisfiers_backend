class User < ApplicationRecord
    
    has_many :satisfiers    

    has_secure_password
    # validates :name, :username, presence: true
    # validates :username, uniqueness: true

    
end
