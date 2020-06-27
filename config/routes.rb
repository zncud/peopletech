Rails.application.routes.draw do
  get 'cards/new'

  root 'page#start'

  get '/play' , to: 'cards#play'

  get '/result', to: 'cards#result'
  
  get '/about', to: 'page#about'
end
