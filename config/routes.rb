# frozen_string_literal: true

Rails.application.routes.draw do
  resources :uploads
  resources :decks
  resources :cards, except: %i[update create destroy]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  get '/draw' => 'cards#draw'

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
