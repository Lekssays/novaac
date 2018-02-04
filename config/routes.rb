Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/adarea', as: 'rails_admin'
  devise_for :users
  root to: "complaints#index"

  #resources :users do
    resources :complaints do
      resources :answers
    end
  #end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
