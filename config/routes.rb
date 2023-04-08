Rails.application.routes.draw do

  get '/' => 'root#show'

  Mumukit::Platform.map_organization_routes!(self) do
    root to: 'book#show'

    resources :book, only: [:show]
    resources :chapters, only: [:show] do
      resource :appendix, only: :show
    end

    resources :exercises, only: :show do
      resources :confirmations, controller: 'exercise_confirmations', only: :create
      resources :solutions, controller: 'exercise_solutions', only: :create
      resources :queries, controller: 'exercise_query', only: :create
      resources :tries, controller: 'exercise_tries', only: :create
    end
    resources :exercises, only: :show
    resources :guides, only: :show do
      resource :progress, controller: 'guide_progress', only: :destroy
    end
    resources :lessons

    resources :faqs, only: [:index]

    get '/guides/:organization/:repository' => 'guides#show_transparently', as: :transparent_guide
    get '/topics/:organization/:repository' => 'topics#show_transparently', as: :transparent_topic
    get '/exercises/:organization/:repository/:bibliotheca_id' => 'exercises#show_transparently', as: :transparent_exercise

    get '/theme_stylesheet'     => 'assets#theme_stylesheet'
    get '/extension_javascript' => 'assets#extension_javascript'
  end

  #Rescue not found routes
  get '*not_found', to: 'application#not_found'
end
