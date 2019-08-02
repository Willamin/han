Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
	root to: 'pages#home'

	get '/', to: 'pages#home'
	get '/secret-test', to: 'pages#secret_test'
end
