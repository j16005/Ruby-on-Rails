Rails.application.routes.draw do
  get 'post/index'
  get "/" => 'home#top'
  post 'post/create' =>'create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
