# require './config/environment'

class UsersController < ApplicationController
  get '/tourdates' do
    Helpers.redirect_if_not_logged_in(session)    
    @user = User.find(session[:user_id])
    @venues = Venue.visible
    @tourdates = @user.tourdates
    erb :'/tours/tourdates.html'
  end

  get 'tourdates/new' do
    Helpers.redirect_if_not_logged_in(session)  
    @venues = Venue.visible
    @tourdates = Tourdate.all
    @user = Helpers.current_user(session)
    erb :'tours/new.html'
  end

  post '/tourdates' do       # collect users tourdates 
    Helpers.redirect_if_not_logged_in(session)    
    @venues = Venue.all
    @user = Helpers.current_user(session)
    @tourdates =Tourdate.all
    if params[:user].keys.include?("venue_ids")
      @user.venue_ids=params[:user][:venue_ids]
    end
    redirect "/tourdates"
  end

  get '/tourdates/:id' do    # renders the user's collected tour dates
    Helpers.redirect_if_not_logged_in(session)             
    @tourdate = Tourdate.find_by_id(params[:id])
    if @tourdate
      @venue = @tourdate.venue
      @page_title = "Edit #{@venue.name} Tourdate"    
      erb :'/tours/show.html' 
    else
      redirect '/tourdates'
    end

        # this route posts to :id/edit
    # includes an edit option for the user's tourdates
  end

    # create tournotes
  post "/tourdates/:id" do
    Helpers.redirect_if_not_logged_in(session)             
   
    @tourdate = Tourdate.find_by(params[:id])
    binding.pry
    if params[:tourdates].include?("notes")

      
     redirect "/tourdates/#{@venue.id}"
    else
      @error = "Couldn't create tourdate note: #{@tourdate.errors.full_message.to_sentence}"
      # erb :'/tourdates/edit.html'
      redirect "/tourdates/#{@venue.id}"
    end
    
  end

  patch '/tourdates/:id/edit' do
    Helpers.redirect_if_not_logged_in(session)    
    @user = Helpers.current_user(session)
    @tourdate = @user.tourdates.find_by_id(params[:id])
    # binding.pry

    # redirect "/tourdates" unless @tourdate

    if @tourdate && @tourdate.update(notes: params[:notes], status: params[:status])
      redirect "/tourdates/#{@tourdate.id}"
    else
      redirect '/tourdates'
    end
  end

  delete '/tourdates/:id' do
    @user = Helpers.current_user(session)
    # binding.pry
    @tourdate = @user.tourdates.find_by_id(params[:id])
    @tourdate.try(:destroy)
    redirect "/tourdates"
  end


  # get tourdates           venues - lists all and links to venues details(venue/:id and venue/show) 
  # post tourdates          create - routes from venues.html
  #                                - handles the form submission and redirects to the user's show
  
  # get tourdates/:id       show - user's tourdates page 
  # post tourdates/:id      show - user's tourdates handle form and content of user's venue selection

  # patch tourdates         update - handles a form to add a new tourdate
  # put tourdates           update

  # get tourdates/:id/edit  edit - has a form to edit existing tourdates and venue selections
  # delete tourdates        delete       
  # get tourdates/new       new - has a form to create a user's custom new venue
  

end
  