Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  resources :article22s do
    resources :comment22s
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
