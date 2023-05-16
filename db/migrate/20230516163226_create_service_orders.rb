class CreateServiceOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :service_orders do |t|
      t.references :client, null: false, foreign_key: true
      t.string :details
    end
  end
end
