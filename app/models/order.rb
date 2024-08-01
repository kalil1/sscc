class Order
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :customer
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items
end
