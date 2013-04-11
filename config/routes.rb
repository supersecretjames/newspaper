NewspaperApp::Application.routes.draw do
  resources :newspapers do
    resources :subscription_plans, :only => [:index, :new]
  end

  resources :subscription_plans
  resources :users
  resources :subscriptions
end
