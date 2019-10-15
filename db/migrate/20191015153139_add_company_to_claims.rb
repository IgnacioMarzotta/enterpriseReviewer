class AddCompanyToClaims < ActiveRecord::Migration[6.0]
  def change
    add_reference :claims, :company, foreign_key: true
    change_column :claims, :company_id, :integer, null: false
  end
end
