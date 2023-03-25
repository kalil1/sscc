class ProductsSerializer < ActiveModel::Serializer
  attributes :id,
  :name,
  :length,
  :width,
  :height,
  :weight
end
