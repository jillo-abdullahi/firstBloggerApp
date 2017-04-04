Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors

  resources :authorsessions, only: [ :new, :create, :destroy ]

    get 'login'  => 'authorsessions#new'
    get 'logout' => 'authorsessions#destroy'

end
