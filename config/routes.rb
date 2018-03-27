Rails.application.routes.draw do
  devise_for :users, controllers: { :sessions => "users/sessions", :registrations => "users/registrations"}
  root to: "hello#index"
  get "hello/home" => "hello#home"
end
