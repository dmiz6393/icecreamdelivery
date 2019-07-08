class Order < ApplicationRecord
  belongs_to :user
  belongs_to :ice_cream_shop
end
