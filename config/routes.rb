Rails.application.routes.draw do

  resources :users, only:[:index]
  resources :items, only:[:index, :new, :create]
	root :to => 'users#top'
	get 'admins/top'
	get 'admins/home'
  get 'items/index'

	devise_for :admins, controllers: {
		sessions: 'admins/sessions', passwords: 'admins/passwords', registrations: 'admins/registrations'
	}

  devise_for :users, controllers: {
  	sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations'
  }
  
end
