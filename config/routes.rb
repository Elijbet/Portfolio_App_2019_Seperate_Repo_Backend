Rails.application.routes.draw do
  resources :code_portfolio_items
  resources :design_portfolio_items
  resources :articles

  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy
  
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
