class IceCreamShop < ApplicationRecord
    has_many :orders
    has_many :addresses
    has_many :items
end
