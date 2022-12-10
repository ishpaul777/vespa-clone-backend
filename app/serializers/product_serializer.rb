class ProductSerializer
  include JSONAPI::Serializer
  attributes :id, :model, :price, :description, :color, :image_url
end
