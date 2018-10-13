Rails.application.routes.draw do
  devise_for :users
  
  authenticated :user do
    root "todo_lists#index", as: :authenticated_root

  end


  resources :todo_lists do
    resources :todo_items do
      member do
       patch :complete
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root "todo_lists#index"
  root "static_pages#home"
end
