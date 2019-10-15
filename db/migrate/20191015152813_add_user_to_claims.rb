class AddUserToClaims < ActiveRecord::Migration[6.0]
  def change
    add_reference :claims, :user, foreign_key: true
    change_column :claims, :user_id, :integer, null: false
  end
end
