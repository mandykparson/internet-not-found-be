Rails.application.routes.draw do
  get '/players/top_five', to: 'players#top_five'
  resources :players
end
