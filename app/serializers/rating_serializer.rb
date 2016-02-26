class RatingSerializer < ActiveModel::Serializer
  attributes :id, :score, :desc, :user
  has_one :beer
end
