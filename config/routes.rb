Rails.application.routes.draw do

  root :to=> "images#index"

  resources :images
  devise_for :users

  devise_scope :user do
    get "/" => "devise/registrations#cancel"
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
