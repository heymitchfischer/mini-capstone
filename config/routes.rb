Rails.application.routes.draw do
  get '/' => 'dragons#index'
  get '/dragons' => 'dragons#index'
  get '/dragons/:id' => 'dragons#show'
end
