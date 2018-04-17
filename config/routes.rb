Rails.application.routes.draw do
#CREATE Routes
  get 'bulletins/create'
  
  get 'games/create'
  
  get 'messages/create'
  
  get 'players/create'
  
  get 'teams/create'
  
  get 'users/create'
#NEW Routes
  get 'games/newgame'

  get 'messages/new'

  get 'players/new'

  get 'teams/new'

  get 'users/dashboard'
#EDIT Routes
  get 'games/edit'

  get 'bulletins/edit'
  
  get 'players/edit'

  get 'teams/edit'

  get 'users/edit'
#UPDATE Routes
  get 'players/update'

  get 'bulletins/update'

  get 'games/update'
    
  get 'teams/update'

  get 'users/update'

#VIEW Routes
  get 'games/view'

  get 'messages/view'

  get 'players/view'

  get 'teams/view'




  get 'games/away_confirm'
  
  
  get 'games/delete'
  
  
  get 'bulletins/delete'
  
  
  get 'messages/read'
  
  
  get 'messages/delete'
  
  
  
  
  
  
  get 'players/delete'
  

  
  get 'users/index'
  
  get 'users/dashboard'
  
  get 'games/home_confirm'
  

  get 'users/login'

  get 'users/logout'

  get 'users/user_params'

  get 'users/on_team'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
