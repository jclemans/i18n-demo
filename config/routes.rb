Rails.application.routes.draw do
  scope "(:locale)" do
    resources :products
    root to: 'products#index'
  end
end
