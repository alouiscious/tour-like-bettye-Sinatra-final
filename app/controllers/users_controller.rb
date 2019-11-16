require './config/environment'

class UsersController < ApplicationController
  get '/tourdates' do

  end

  post '/tourdates' do       # collect users tourdates 

  end

  get '/tourdates/:id' do    # renders the user's collected tour dates


                   
    # this route posts to :id/edit
    # includes an edit option for the user's tourdates

    erb :'/tours/tourdates'    

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
  