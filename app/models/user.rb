class User < ApplicationRecord
    has_many :needs, through: :needs
    has_many :satisifers
    has_secure_password
end
