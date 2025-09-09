class AddNotNullNameToGroup < ActiveRecord::Migration[8.0]
  def change
    change_column_null :groups, :name, false
    change_column_null :groups, :kind, false
  end
end
