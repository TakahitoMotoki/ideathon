Rails.application.routes.draw do
  resources :reports
  resources :comments
  resources :islands
  resources :buildings, :only => [:show]
  devise_for :users, controllers: { :sessions => "users/sessions", :registrations => "users/registrations"}
  root to: "hello#index"
  get "hello/home" => "hello#home"
  get "hello/profile" => "hello#profile"
  get "hello/ranking" => "hello#ranking"
  get "hello/shop" => "hello#shop"
  get "hello/tutorial" => "hello#tutorial"
  get "hello/introduction" => "hello#introduction"
  get "hello/show_user/:show_user_id" => "hello#show_user", :as => "hello_show_user"
  get "islands/show_island/:show_island_id" => "islands#show_island", :as => "islands_show_island"
end
