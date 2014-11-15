class ProductFieldSerializer < ActiveModel::Serializer
  attributes :id, :name, :field_type, :required
  has_one :product_type
end
