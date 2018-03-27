Rails.application.routes.draw do
  resources :reports
  resources :comments
  resources :islands
  resources :buildings
  devise_for :users, controllers: { :sessions => "users/sessions", :registrations => "users/registrations"}
  root to: "hello#index"
  get "hello/home" => "hello#home"
end
