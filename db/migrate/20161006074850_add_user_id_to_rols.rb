class AddUserIdToRols < ActiveRecord::Migration[5.0]
  def change
    add_column :rols, :user_id, :integer
  end
end
