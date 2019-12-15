Rails.application.routes.draw do
  devise_for :users
  root to: 'profiles#index'
  resources :profiles, except: :index
  resources :profile_skills, only: [:new, :create] do
  end
  get 'search', to: 'profiles#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
