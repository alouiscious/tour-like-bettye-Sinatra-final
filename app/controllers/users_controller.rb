require './config/environment'

class UsersController < ApplicationController
  get '/venues' do          # renders a full list of tour dates
    if Helpers.current_user(session)
      @user = User.find(session[:user_id])
      @venues = Venue.all
      @tourdates = Tourdate.all     # venues.html and button routes to tourdates/edit
    end                             # has links that reveal each venue details
    erb :'/venues/bettye_venues'    

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
    erb :'/users/tourdates'    # includes an edit option for the user's tourdates

  end

  post '/tourdates/:id/edit' do
    @user = User.find(session[:user_id])
    @venues = Venue.all
    @tourdates = Tourdate.all
    
  end

  patch '/tourdates/:id' do
    @venues = Venue.all
    @user = Helpers.current_user(session)
    @tourdates = Tourdates.all
    binding.pry
      if !params[:user].keys.include?("venue_ids")
        params[:user]["venue_ids"] = []
      end

    @user = User.find(params[:id])
    @user.update(params["user"])
 
    redirect "/tourdates/:id"
    # erb :'/users/user_tour'
  end


  # get tourdates           venues - lists all and links to venues details(venue/:id and venue/show) 
  # post tourdates          create - routes from venues.html
  #                                - handles the form submission and redirects to the user's show
  
  # get tourdates/:id       show - user's tourdates page 
  # post tourdates/:id      show - user's tourdates handle form and content of user's venue selection

  # patch tourdates         update - handles a form to add a new tourdate
  # put tourdates           update

  # get tourdates/:id/edit  edit - has a form to edit existing tourdates and venue selections
  # destroy tourdates       delete       
  # get tourdates/new       new - has a form to create a user's custom new venue
  
  



end
  