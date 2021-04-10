Rails.application.routes.draw do
  resources :vaccines
  devise_for :users
  resources :patients
  root 'patients#index'
  get 'home/about'
  get '/check', :controller=>'vaccines', :action=>'checkvaccine'
  post '/validate', :controller=>'vaccines', :action=>'isvaccinated'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
