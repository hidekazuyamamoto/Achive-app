Rails.application.routes.draw do
  devise_for :users
  resources :main_goals
  root to: "main_goals#index"
end
