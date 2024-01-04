Rails.application.routes.draw do
  root "pages#home"
  resources :dice_rolls, except: %i[edit update destroy]
  resources :dice_types do 
    patch :order, on: :member
  end
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check
end
