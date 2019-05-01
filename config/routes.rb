Rails.application.routes.draw do
  resources :grupos
  resources :sorteios
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "grupos#index"
  get '/convidar/:id', to: 'grupos#convidar', as: 'convidar'
  post '/convidar/:id', to: 'grupos#convite', as: 'convite'
  post '/sorteios/:id', to: 'grupos#sorteio', as: 'sortear'
end
