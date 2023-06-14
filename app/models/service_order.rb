class ServiceOrder < ApplicationRecord
  # Enums
  enum status: { created: 1, in_progress: 2, budgeted: 3,  done: 4 }

  belongs_to :client
  has_many :tools, dependent: :destroy

  accepts_nested_attributes_for :tools, allow_destroy: true

  # Scopes
  scope :by_text, ->(text) do
    return all unless text.present?

    joins_query = <<-SQL
    INNER JOIN clients ON service_orders.client_id = clients.id
    INNER JOIN tools ON tools.service_order_id = service_orders.id
    SQL

    where_query = <<-SQL
      service_orders.details ILIKE :text OR clients.first_name ILIKE :text OR
      clients.last_name ILIKE :text OR tools.model ILIKE :text OR tools.location ILIKE :text
    SQL

    joins(joins_query).where(where_query, text: "%#{text}%").distinct
  end

  scope :by_status, ->(status) do
    return unless ServiceOrder.statuses.include?(status)

    where(status: status)
  end

  scope :by_client, ->(client_id) do
    return unless client_id.present?

    where(client_id: client_id)
  end
end
