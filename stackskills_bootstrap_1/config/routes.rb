Rails.application.routes.draw do
  root 'index#index'
  get '/index' => 'index#index'
  get '/about' => 'pages#about'
  get '/services' => 'pages#services'
  get '/contact' => 'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end