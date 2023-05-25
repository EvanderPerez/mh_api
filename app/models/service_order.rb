class ServiceOrder < ApplicationRecord
  belongs_to :client
  has_many :tools, dependent: :destroy

  accepts_nested_attributes_for :tools, allow_destroy: true

  scope :filter_by, ->(filters) do
    return all unless filters.present?

    where(filters)
  end
end
