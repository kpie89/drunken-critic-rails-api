#
class User < ActiveRecord::Base
  include Authentication
  has_many :ratings, inverse_of: :user
end
