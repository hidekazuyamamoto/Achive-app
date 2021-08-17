Rails.application.routes.draw do
  devise_for :users
  resources :main_goals do
    resources :sub_goals
  end
  root to: "main_goals#index"
end
