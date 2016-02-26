class Rating < ActiveRecord::Base
  belongs_to :beer, inverse_of: :ratings, foreign_key: true
  belongs_to :user, inverse_of: :ratings, foreign_key: true
end
