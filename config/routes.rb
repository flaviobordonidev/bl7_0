Rails.application.routes.draw do
  devise_for :users
  resources :users

  get 'mockups/page_a'
  get 'mockups/page_b'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'mockups#page_a'
end
