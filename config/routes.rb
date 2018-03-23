Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index', to: 'flats#index'

  get '/show', to: 'flats#show', as: :show

end
