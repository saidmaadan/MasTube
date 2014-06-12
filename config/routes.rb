Rails.application.routes.draw do
  root "videos#index"
  get '/videos/all' => 'videos#all'

  resources :videos do
    resources :comments
  end
end
