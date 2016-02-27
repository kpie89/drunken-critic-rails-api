class RatingSerializer < ActiveModel::Serializer
  attributes :id, :score, :desc, :user
end
