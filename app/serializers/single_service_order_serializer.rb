class SingleServiceOrderSerializer < ActiveModel::Serializer
  attributes :id, :client_id, :details, :tools

  def tools
    object&.tools
  end
end
