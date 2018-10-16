Rails.application.routes.draw do
  get 'coffeeblog/index'

  get 'coffeeblog/postZdTnk3ch1A99e3'

  get 'coffeeblog/confirm'
    
  get 'coffeeblog/detail'
    
  post 'coffeeblog/confirm'

  get 'coffeeblog/success'
    
  post 'coffeeblog/index'
    
  get 'coffeeblog/search'
  post 'coffeeblog/search'
    
  get 'coffeeblog/tanime'
  get 'coffeeblog/tech'
  get 'coffeeblog/travel'
  get 'coffeeblog/tmusic'
  get 'coffeeblog/topic'
    
  get 'coffeeblog/:id' => 'coffeeblog#detail'
    
get 'coffeeblog/:id/edit' => 'coffeeblog#edit'
post 'coffeeblog/:id/update' => 'coffeeblog#update'   
get "coffeeblog/:id/destroy" => "coffeeblog#destroy"
post "coffeeblog/:id/destroy" => "coffeeblog#destroy"
    
    
  get 'coffeeblog/dummy'

  get 'post/confirm' 

  get 'post/success'

  get 'post/blog'
    
  get 'coffeeblog/ZdTnk3ch1A99e3'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    
    
end
