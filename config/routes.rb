Rails.application.routes.draw do
  devise_for :users
  get '/' => 'hello#index'
end