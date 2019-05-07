Rails.application.routes.draw do
  resources :listings, only: [:new]
end
