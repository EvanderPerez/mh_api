class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :first_name, null: false
      t.string :second_name
      t.string :last_name, null: false
      t.string :second_last_name
      t.string :phone_number,  null: false
      t.timestamps
    end
  end
end
