Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  get 'rooms/show'
  get 'hotels/show', to: 'hotels#show'

  get 'hotel/:id', to: 'hotels#showById'
  get 'hotels/:hotel_name/:room_type_id/availability', to: 'hotels#calculatePrice'
  post 'books', to: 'bookings#create'

  namespace :api, defaults: {format: 'json'} do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
    end
  end

end
