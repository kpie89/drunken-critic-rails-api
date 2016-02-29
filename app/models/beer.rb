class Beer < ActiveRecord::Base
  has_many :ratings, inverse_of: :beer


  def self.search_by_key(key)
    if key
      response = HTTParty.get("http://prost.herokuapp.com/api/v1/beer/#{key}")
      {beer: response['title'], key: response['key'], abv: response['abv'], style: response['tags'], brewery: response['brewery']}
    end
  end

  def self.random_beer
    response = HTTParty.get('http://prost.herokuapp.com/api/v1/beer/rand')
    {beer: response['title'], key: response['key'], abv: response['abv'], style: response['tags'], brewery: response['brewery']}
  end

  def self.find(id)
    response = HTTParty.get("http://prost.herokuapp.com/api/v1/beer/#{key}")
    {beer: response['title'], key: response['key'], abv: response['abv'], style: response['tags'], brewery: response['brewery']}
  end

end
