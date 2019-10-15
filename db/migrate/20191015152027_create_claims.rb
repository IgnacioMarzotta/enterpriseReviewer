class CreateClaims < ActiveRecord::Migration[6.0]
  def change
    create_table :claims do |t|
      t.string :content

      t.timestamps
    end
  end
end
