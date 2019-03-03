Rails.application.routes.draw do
  root 'export#index'

  post '/',   to: 'export#create'
  get  '/show', to: 'export#show', as: 'show'
end
