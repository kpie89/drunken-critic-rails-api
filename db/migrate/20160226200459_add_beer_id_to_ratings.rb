class AddBeerIdToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :beer_id, :string
  end
end
