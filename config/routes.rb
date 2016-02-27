Rails.application.routes.draw do
  resources :ratings
  resources :beers, except: [:new, :edit]
  get 'hops' => 'beers#hops'
  get '/styles' => 'beers#styles'
  get '/categories' => 'beers#categories'
  get '/breweries' => 'beers#breweries'
  get '/beer/random' => 'beers#random_beer'
  get '/brewery/random' => 'beers#random_brewery'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
