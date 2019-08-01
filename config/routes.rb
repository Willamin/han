Rails.application.routes.draw do
	root to: 'pages#home'

	get '/', to: 'pages#home'
	get '/secret-test', to: 'pages#secret_test'
end
