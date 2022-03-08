Rails.application.routes.draw do
  resources :eg_users
  get 'users/index'
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}, controllers: { sessions: 'users/sessions' }
  resources :users

  get 'mockups/page_a'
  get 'mockups/page_b'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'mockups#page_a'
end
