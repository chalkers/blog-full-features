ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'posts', :action => "index"
  map.resources :posts
  map.resources :comments

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
