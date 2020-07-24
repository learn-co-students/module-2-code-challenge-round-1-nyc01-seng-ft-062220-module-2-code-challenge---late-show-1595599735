Rails.application.routes.draw do
  resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, except: [:destroy, :update, :edit]
  resources :episodes, except: [:destroy, :update, :edit]
  resources :appearances, except: [:destroy, :index, :update, :edit]
end
