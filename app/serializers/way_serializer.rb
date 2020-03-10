class WaySerializer < ActiveModel::Serializer
  attributes :id, :satisfier_id, :need_id

  belongs_to :satisfier
  belongs_to :need

end
