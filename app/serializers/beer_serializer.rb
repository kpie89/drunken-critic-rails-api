class BeerSerializer < ActiveModel::Serializer
  attributes :id, :"name,", :desc, :abv, :ibu
end
