class ProductSerializer
  include JSONAPI::Serializer
  attributes :id, :model, :price, :description, :color, :imageUrl
end
