Rails.application.routes.draw do

	get '/' => 'places#index'

	
	get '/places/new' => 'places#new'
	get '/places/create' =>'places#create'
	get '/places/:id/delete' => 'places#delete'
	get '/places/:id/edit' => 'places#edit'
	get '/places/:id/update' => 'places#update'
	get '/places/:id/addreview' => 'places#addreview'
	get '/places/:id' => 'places#show'
	get '/places'=> 'places#index'


  # Put your routes here

end
