Rails.application.routes.draw do
  resources :ratings
  resources :beers, except: [:new, :edit]
  get '/beer/rand' => 'beers#random_beer'
  get '/brewery/random' => 'beers#random_brewery'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/beer' => 'beers#search_by_key'
  resources :users, only: [:index, :show]
end
