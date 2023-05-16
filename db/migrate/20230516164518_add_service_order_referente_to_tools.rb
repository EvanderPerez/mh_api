class AddServiceOrderReferenteToTools < ActiveRecord::Migration[5.2]
  def change
    add_reference :tools, :service_orders, foreign_key: true
  end
end
