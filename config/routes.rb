Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "cocktails#index"
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
end
