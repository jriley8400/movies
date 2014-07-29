Rails.application.routes.draw do
  get '/movies' => 'application#index'
  get '/movie/:id' => 'application#show'
  
  get '/new_movie' => 'application#new'
  get '/create_movie' => 'application#create'
  
  get '/movie/:id/edit' => 'application#edit'
  get '/update_movie/:id' => 'application#update'
  get '/movie/:id/destroy' => 'application#destroy'

end
