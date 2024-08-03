class OrderItem
  include Mongoid::Document
  include Mongoid::Timestamps
  field :quantity, type: String
  belongs_to :product
  belongs_to :order
  
  validates :quantity, numericality: { greater_than: 0 }
end
