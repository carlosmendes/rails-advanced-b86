Rails.application.routes.draw do


  resources :restaurants do
    # get 'restaurants/top', to: 'restaurants#top'
    collection do                       # collection => no restaurant id in URL
      get 'top', to: "restaurants#top"  # RestaurantsController#top
    end

    # get 'restaurants/:id/chef', to:  'restaurants#chef'
    member do                             # member => restaurant id in URL
      get 'chef', to: "restaurants#chef"  # RestaurantsController#chef
    end

    resources :reviews, only: [ :new, :create ]

  end

  # get 'admin/restaurants', to: 'admin/restaurants#index'
  namespace :admin do
    resources :restaurants, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
