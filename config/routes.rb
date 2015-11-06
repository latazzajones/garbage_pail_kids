Rails.application.routes.draw do

  root to: 'garbage_pail_kids#index'
  resources :garbage_pail_kids, only: [:create]

end
