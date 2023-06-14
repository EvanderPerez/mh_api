class ServiceOrderSerializer < ActiveModel::Serializer
  attributes :id, :client_id, :details, :client, :status, :created_at

  def client
    object.client&.first_name + ' ' + object.client&.last_name
  end
end
