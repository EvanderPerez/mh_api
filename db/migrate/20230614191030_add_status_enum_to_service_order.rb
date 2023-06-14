class AddStatusEnumToServiceOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :service_orders, :status, :integer, default: 0
  end
end
