Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :gtms
  end
end
