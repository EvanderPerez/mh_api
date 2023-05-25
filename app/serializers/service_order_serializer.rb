class ServiceOrderSerializer < ActiveModel::Serializer
  attributes :id, :client_id, :details
end
