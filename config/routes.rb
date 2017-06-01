Rails.application.routes.draw do
  get '/get_bob' => 'home#get_bob'
  root 'home#index'
end