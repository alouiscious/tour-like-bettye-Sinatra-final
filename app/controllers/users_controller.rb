require './config/environment'

class UsersController < ApplicationController
  get '/venues' do          # renders a full list of tour dates
    if Helpers.current_user(session)
      @user = User.find(session[:user_id])
      @venues = Venue.all
      @tourdates = Tourdate.all
    end                      # venues.html and button routes to tourdates/edit
    erb :'users/venues.html' # has links that reveal each venue details

  end

  post '/tourdates' do       # collect users tourdates 
    if Helpers.logged_in?(session)
      @user = Helpers.current_user(session)
      @user = User.update(params[:user])
    end
    redirect "/tourdates/:id"
  
  end

  get '/tourdates/:id' do    # renders the user's collected tour dates
    if Helpers.current_user(session)
      @user = User.find(session[:user_id])
      @venues = Venue.all
      @tourdates = Tourdate.all
    end                      # posts to :id/edit
    erb :'show'              # includes an edit option for the user's tourdates

  end

  post '/tourdates/:id/edit' do

  end


  get tourdates
  post tourdates
  get tourdates/:id
  put tourdates
  patch tourdates
  get tourdates/:id/edit
  destroy tourdates
  tourdates
  



end
  