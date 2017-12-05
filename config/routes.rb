Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'mains#index'

  get '/list_organizers', to: 'mains#all_organizers', as: 'all_organizers'
  get '/about_organizer/:id', to: 'mains#about_organizer', as: 'about_organizer'

end
