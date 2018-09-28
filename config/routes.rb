Rails.application.routes.draw do
  get 'members/muhiyh'
  get 'credit/index'
  get 'members/list'
  get 'members/zerlock'
  get 'main/index'
  get 'members/form'
  get 'profile/:name', to:'members#show'
  get 'member/:name', to:'members#show'
  resources :members
  resources :creative_fields
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
