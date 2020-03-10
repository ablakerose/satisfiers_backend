class NeedSerializer < ActiveModel::Serializer
  attributes :id, :level, :name

  has_many :ways
  has_many :satisfiers, through: :ways
end
