Rails.application.routes.draw do
  get '/home', to: 'detection#Home', as:'home'
  get '/logs', to: 'detection#logs', as: 'logs'
  get '/update', to: 'detection#update'
  get '/graph', to: 'detection#graph' ,as: 'graph'
  get '/', to: 'user#login'
  post '/login', to: 'user#check'
  get 'logout', to: 'user#logout', as: 'logout'
  get 'mute', to: 'detection#mute', as: 'mute'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
