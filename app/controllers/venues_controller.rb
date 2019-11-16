require './config/environment'

class VenuesController < ApplicationController
  get '/venues' do          # renders a full list of tour dates
    if Helpers.current_user(session)
      @user = User.find(session[:user_id])
      @venues = Venue.all
      @tourdates = Tourdate.all   # venues.html and button routes to tourdates/edit
    end                             # has links that reveal each venue details
    erb :'/venues/bettye_venues'    

  end

  get '/venues/new' do
    erb :"new.html"
  end

  get 'venues/:id' do

    @venue = Venue.find(params[:id])
    erb :'/venues/show.html'

  end

  post "/venues" do
  
    @venue = Venue.create(name: params[:name], booking: params[:booking], box_office: params[:box_office], email: params[:email], phone: params[:phone], description: params[:description], website: params[:website], city: params[:city], state: params[:state])

    binding.pry

    redirect "/venues/#{@venue.id}"

  end
  





end