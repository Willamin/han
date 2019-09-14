Rails.application.routes.draw do
	post 'sessions/create'
	get 'sessions/destroy'
	root to: 'pages#home'

	get '/', to: 'pages#home'
	get '/overview', to: 'pages#overview'

	get '/projects', to: 'projects#index'
	post '/projects/create', to: 'projects#create'
	delete '/projects/destroy', to: 'projects#destroy'
	post '/projects/edit_name', to: 'projects#edit_name'
end
