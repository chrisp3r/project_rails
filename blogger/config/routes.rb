#Rails.application.routes.draw do
Blogger::Application.routes.draw do

  #root 'articles#index'
  get '/' => 'articles#index'
  
  #resources :articles
  resources :articles do
    resources :comments
  end
  resources :tags

  get '/create' => 'articles#create'
  get '/new' => 'articles#new'
  get '/edit' => 'articles#edit'
  get '/show' => 'articles#show'
  patch '/update' => 'articles#update'
  put '/update' => 'articles#update'
  delete '/destroy' => 'articles#destroy'

end