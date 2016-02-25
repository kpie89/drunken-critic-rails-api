# class Beer
#   def self.all
#     HTTParty.get('http://api.brewerydb.com/v2/beers/?key=ENV['BREWERY_DB_KEY']')
#   end
# end

class Beer
  def self.all
    HTTParty.get('http://api.brewerydb.com/v2/beers/?key=d94be20c4ddc36bf7de6ea0b615393a1')
  end

  def self.random_beer
    HTTParty.get('http://api.brewerydb.com/v2/beer/random/?key=d94be20c4ddc36bf7de6ea0b615393a1')
  end

  def self.breweries
    HTTParty.get('http://api.brewerydb.com/v2/breweries/?key=d94be20c4ddc36bf7de6ea0b615393a1')
  end

  def self.random_brewery
    HTTParty.get('http://api.brewerydb.com/v2/brewery/random/?key=d94be20c4ddc36bf7de6ea0b615393a1')
  end

  def self.categories
    HTTParty.get('http://api.brewerydb.com/v2/categories/?key=d94be20c4ddc36bf7de6ea0b615393a1')
  end

  def self.styles
    HTTParty.get('http://api.brewerydb.com/v2/styles/?key=d94be20c4ddc36bf7de6ea0b615393a1')
  end

  def self.hops
    HTTParty.get('http://api.brewerydb.com/v2/hops/?key=d94be20c4ddc36bf7de6ea0b615393a1')
  end

end
