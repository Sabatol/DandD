Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  devise_for :users, path: 'utilisateur'
  resources :users, path: 'utilisateur' do
    resources :players
  end
  resources :documentations
  resources :maps, only: %i[new create show]
  get 'wiki/weapons'
  get 'wiki/skills'
  get 'wiki/maps'
end
