Rails.application.routes.draw do
  get 'infos/profile'

  get 'infos/contact'

  devise_for :users
  resources :posts

  resources :post do
  	member do
  		put "like", to: "posts#upvote"
  	end
  end
  		
  root to: 'posts#index'

  get "/:newsletter" => 'emailapi#newsletter'
  post 'emailapi/subscribe' => 'emailapi#subscribe'
  
end