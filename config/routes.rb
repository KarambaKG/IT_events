Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'mains#index'

  get '/list_organizers', to: 'mains#all_organizers', as: 'all_organizers'
  get '/about_organizer/:id', to: 'mains#about_organizer', as: 'about_organizer'

  get '/all_future_events', to: 'mains#all_future_events', as: 'all_future_events'
  get '/about_event/:id', to: 'mains#about_event', as: 'about_event'
  get '/show_past_events', to: 'mains#show_past_events', as: 'show_past_events'

  get '/about_event_ics_file/:id', to: 'mains#about_event_ics_file', as: 'about_event_ics_file'

end
