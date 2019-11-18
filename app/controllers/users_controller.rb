# require './config/environment'

class UsersController < ApplicationController
  get '/tourdates' do
    Helpers.redirect_if_not_logged_in(session)    
    @user = User.find(session[:user_id])
    @venues = Venue.visible
    @tourdates = Tourdate.all


    erb :'/tours/tourdates.html'
  end

  get 'tourdates/new' do
    Helpers.redirect_if_not_logged_in(session)  
    @venues = Venue.all
    @tourdates =Tourdate.all
    @user = Helpers.current_user(session)

    if !params[:user].keys.include?("venue_ids")
      params[:user]["venue_ids"] = []
      # @user = User.find_by_id(params[:id])
    end
    @user = User.create(params[:user])
    if !params[:user].empty?
      @user.venues << Venue.create(name: params[:user])
    end


    erb :'tours/new.html'
    
  end

  post '/tourdates' do       # collect users tourdates 
    Helpers.redirect_if_not_logged_in(session)    
    @venues = Venue.all
    @user = Helpers.current_user(session)
    @tourdates =Tourdate.all

    if !params[:user].keys.include?("venue_ids")
      params[:user]["venue_ids"] = []
      # @user = User.find_by_id(params[:id])
    end
    @user = User.create(params[:user])
    if !params[:user].empty?
      @user.venues << Venue.create(name: params[:user])
    end
    redirect '/tourdates'
  end

  get '/tourdates/:id' do    # renders the user's collected tour dates
    Helpers.redirect_if_not_logged_in(session)             
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
    Helpers.redirect_if_not_logged_in(session)    
    @venues = Venue.all
    @user = Helpers.current_user(session)
    @tourdates = Tourdates.all

  end

  delete '/tourdates/:id' do
    session.clear
    redirect '/'
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
  