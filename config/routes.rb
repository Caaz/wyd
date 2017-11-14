Rails.application.routes.draw do
  root 'application#home'
  post 'user/avatar', to: 'users#avatar'
  resources :posts
  devise_for :users, controllers: { registrations: 'users/registrations' }

end
