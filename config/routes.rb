Rails.application.routes.draw do
  # get 'episodes/index'

  # get 'episodes/new'

  # get 'episodes/create'

  # get 'episodes/delete'

  # 	get 'podcasts/index'

  # 	get 'podcasts/show'

  	devise_for :podcasts
  	resources :podcasts, only: [:index, :show]  do
      resources :episodes
    end
    #if you are authenticated, you are redirected to the dashboard
    authenticated :podcast do 
      root 'podcasts#dashboard', as: "authenticated_root"
    end
    root 'welcome#index' #if you are not signed in
  # get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
