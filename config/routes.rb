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
end
