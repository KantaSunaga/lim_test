Rails.application.routes.draw do
  namespace :confirmation do
    get "instagram_tool/:id", to: "instagram_tool#show"
    patch "instagram_tool/update/:id", to: "instagram_tool#update", as: "instagram_tool_update_path"
  end

  resources :instagram_tools

  root to: "instagram_tools#new"
  get 'search', to: 'instagram_tools#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
