Rails.application.routes.draw do
  
	devise_for :admins, controllers: {
		sessions: 'admins/sessions', passwords: 'admins/passwords', registrations: 'admins/registraions'
	}

  devise_for :users, controllers: {
  	sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations'
  }
  
end
