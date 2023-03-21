class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :description, type: String
  field :length, type: Float
  field :width, type: Float
  field :height, type: Float
  field :weight, type: Float
  
  validates :name, presence: true
  validates :length, :width, :height, :weight, numericality: { greater_than: 0 }
end
