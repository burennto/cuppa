Cuppa::Application.routes.draw do

  namespace :api, :format => :json do

    namespace :v1 do

      resources :people, :only => [ :index ]

      resources :beverages, :only => [ :index ]

      resources :orders, :only => [ :index, :create, :update, :destroy ]

    end

  end

end
