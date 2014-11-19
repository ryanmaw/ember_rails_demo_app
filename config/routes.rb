Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :members
    end
  end


  # Catch all route for rails to avoid 404 error on ember subroutes
  get '*path', to: 'home#index'

end




