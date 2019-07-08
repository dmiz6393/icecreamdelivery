class Item < ApplicationRecord
    belongs_to :ice_cream_shop
    has_many :order_items 
end
