class ReservationSerializer 
  include JSONAPI::Serializer
  attributes :id, :city, :reserved_date, :product
end
