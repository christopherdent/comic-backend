Rails.application.routes.draw do
  resources :users
  get '/comics', to: "comics#get_comics"
  resources :comics
end
