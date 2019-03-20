Rails.application.routes.draw do
  resources :code_portfolio_items
  resources :design_portfolio_items
  resources :articles
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
