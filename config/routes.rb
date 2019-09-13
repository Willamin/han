Rails.application.routes.draw do
	post 'sessions/create'
	get 'sessions/destroy'
	root to: 'pages#home'

	get '/', to: 'pages#home'
	get '/secret-test', to: 'pages#secret_test'

	get '/projects', to: 'projects#index'
	post '/projects/create', to: 'projects#create'
end
