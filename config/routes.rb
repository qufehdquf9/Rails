Rails.application.routes.draw do
  root 'home#index'
  
  get 'home/index'

  get 'home/new'

  post 'home/create'
  
  get 'home/delete/:post_id' => 'home#delete'

  get 'home/edit/:post_id' => 'home#edit'
  
  post 'home/update/:post_id' => 'home#update'
  
  post '/:p_id/comment_create' =>'home#comment_create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/:p_id/comment_destroy/:c_id' =>'home#comment_destroy'

end
