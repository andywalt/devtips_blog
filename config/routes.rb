Rails.application.routes.draw do
  devise_for :users
  resources :posts

  resources :post do
  	member do
  		put "like", to: "posts#upvote"
  	end
  end
  		
  root to: 'posts#index'

  root 'emailapi#index'
  post 'emailapi/subscribe' => 'emailapi#subscribe'
  
end