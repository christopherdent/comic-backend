Rails.application.routes.draw do
  resources :users, only: [:create, :show, :index]

  # get 'user/comics', to: "comics#get_comics"

  # resources :comics

end
