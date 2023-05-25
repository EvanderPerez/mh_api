class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :model, null: false
      t.string :tool_type
      t.string :brand, null: false
      t.string :accesories
      t.string :location, null: false
      t.timestamps
    end
  end
end
