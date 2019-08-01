Rails.application.routes.draw do
  get '/', to: 'pages#home'
  get '/secret-test', to: 'pages#secret_test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
