class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name
  has_many :needs, through: :satisfiers

end
 