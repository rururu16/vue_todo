Rails.application.routes.draw do
  namespace :api do
    get 'tasks/index'
    get 'tasks/create'
    get 'tasks/update'
  end
  root to: 'home#index'

  namespace :api, format: 'json' do
    resources :tasks, only: %i(index create update)
  end
end
