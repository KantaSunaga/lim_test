Rails.application.routes.draw do
  resources :instagram_tools
  root to: "instagram_tools#new"
  get 'search', to: 'instagram_tools#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
