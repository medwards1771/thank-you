Rails.application.routes.draw do
  root 'welcome#index'
  resources :jobs, only: :index
end
