class Order < ApplicationRecord
  belongs_to :user
  belongs_to :ice_cream_shop
  has_many :order_items
end
