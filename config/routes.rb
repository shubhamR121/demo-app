Rails.application.routes.draw do
  
  #resources :sca1s
  root 'articles#index'
   get 'index' => "articles#index"
 # get 'show' => "articles#show"
  #get 'new' => "articles#new"
  #get 'create' => "articles#create"
  #get 'edit' => "articles#edit"

  

  devise_for :users
  resources :articles do
    resources :comments
    get 'verified', on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
