Rails.application.routes.draw do
  get "tasks", to: "tasks#index"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  lklkjfdalkdjfaldfadfa
  fadfadfadfadfadsfadfa
  adfadfadsfadsfadsfafa

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
