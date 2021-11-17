Rails.application.routes.draw do
  get '/comics', to: "comics#get_comics"
  resources :comics
end
