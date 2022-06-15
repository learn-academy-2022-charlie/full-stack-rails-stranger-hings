Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'blog#index'
  get 'blog' => 'blog#index' , as:'blog'
  get 'blog/:id' => 'blog#show' , as:'post'
end
