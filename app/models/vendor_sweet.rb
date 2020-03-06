class VendorSweet < ApplicationRecord
    belongs_to :sweet 
    belongs_to :vendor

    validates :price, presence: true, numericality: {only_integer: true, greater_than: 0}
    validates :vendor_id, uniqueness: true
    validates :sweet_id, uniqueness: true
    
end
