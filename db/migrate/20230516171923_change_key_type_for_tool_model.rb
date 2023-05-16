class ChangeKeyTypeForToolModel < ActiveRecord::Migration[5.2]
  def change
    rename_column :tools, :type, :tool_type
  end
end
