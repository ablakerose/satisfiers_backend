class SatisfierSerializer < ActiveModel::Serializer
  attributes :id, :activity, :value, :user_id, :date_added, :date_completed

    
    has_many :ways
    has_many :needs, through: :ways
#defining what comes back anytime we render json in our controller
end
