Rails.application.routes.draw do

  root to: 'site#home'

  resources :memes do

    put 'upvote',           to: 'memes#upvote'
    post '/upvote',         to: 'memes#upvote'
    get '/upvote',          to: 'memes#upvote'

    put 'downvote',         to: 'memes#downvote'
    post '/downvote',       to: 'memes#downvote'
    get '/downvote',        to: 'memes#downvote'

  end

  resources :upvotes
  resources :downvotes

end
