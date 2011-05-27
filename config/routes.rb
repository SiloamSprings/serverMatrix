ServerMatrix::Application.routes.draw do
  devise_for :users

  resources :machines
  root :to => "machines#index"
end
