Rails.application.routes.draw do
  resources :habers
  root 'habers#index'
end
