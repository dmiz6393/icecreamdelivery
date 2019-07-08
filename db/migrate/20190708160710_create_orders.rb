class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :ice_cream_shop, foreign_key: true

      t.timestamps
    end
  end
end
