Rails.application.routes.draw do
  get 'welcome/index' #ells Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action

  root 'welcome#index' #tells Rails to map requests to the root of the application to the welcome controller's

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
