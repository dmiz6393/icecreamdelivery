class CreateIceCreamShops < ActiveRecord::Migration[5.2]
  def change
    create_table :ice_cream_shops do |t|
      t.string :name
      t.timestamps
    end
  end
end
