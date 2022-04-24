Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'pets', to:'pages#pets'
  get "create", to:'pages#create'
  get "FAQ", to:'pages#FAQ'
  get "contact", to:'pages#contact'
end
