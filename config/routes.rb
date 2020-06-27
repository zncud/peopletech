Rails.application.routes.draw do
  root 'page#start'

  get '/play' , to: 'page#play'

  get '/result', to: 'page#result'
  
  get '/about', to: 'page#about'
end
