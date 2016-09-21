Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :books
  devise_for :users
  get 'tagged'=>'books#tagged',:as=>'tagged'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#page'
end
