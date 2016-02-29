class RatingSerializer < ActiveModel::Serializer
  attributes :id, :score, :desc, :user, :beer_id
end
