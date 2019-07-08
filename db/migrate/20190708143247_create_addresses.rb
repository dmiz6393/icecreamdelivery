class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.integer :number
      t.string :city
      t.string :post_code
      t.references :user, foreign_key: true
      t.references :ice_cream_shop, foreign_key: true

      t.timestamps
    end
  end
end
