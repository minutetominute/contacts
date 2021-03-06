Routes::Application.routes.draw do
  resources :users, only: [
    :create,
    :destroy,
    :index,
    :show,
    :update
      ] do
      resources :contacts, only: :index
      resources :comments, only: [:index, :create]
  end

  resources :contacts, only: [
      :create, :destroy, :show, :update
      ] do
      resources :comments, only: [:index, :create]  
  end

  resources :contact_shares, only: [
      :create, :destroy
      ]

  # get 'users', to: 'users#index'
  # post 'users', to: 'users#index'
  # get 'users/new', to: 'users#create', as: 'new_user'
  # get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get 'users/:id', to: 'users#show', as: 'user'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'
end
