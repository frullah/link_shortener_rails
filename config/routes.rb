Rails.application.routes.draw do
  get 'l/:id', to: 'link_opener#open', as: :link_opener

  resources :links
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "links#index"
end
