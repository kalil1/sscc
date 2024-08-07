Rails.application.routes.draw do
  devise_for :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace 'api' do
    namespace 'v1' do
      resources :products
      get 'product_search', to: 'products#search'
    end
  end
end
