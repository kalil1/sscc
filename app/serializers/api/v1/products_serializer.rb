class Api::V1::ProductsSerializer < ActiveModel::Serializer
  attributes :name,
  :length,
  :width,
  :height,
  :weight

  def dim
    object.dimensions
  end
end
