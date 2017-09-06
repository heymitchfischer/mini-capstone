Rails.application.routes.draw do
  get '/' => 'dragons#index'
  get '/dragons' => 'dragons#index'

  get '/dragons/new' => 'dragons#new'
  post '/dragons' => 'dragons#create'

  get '/dragons/:id' => 'dragons#show'

  get '/dragons/:id/edit' => 'dragons#edit'
  patch '/dragons/:id' => 'dragons#update'

  delete '/dragons/:id/' => 'dragons#destroy'
end
