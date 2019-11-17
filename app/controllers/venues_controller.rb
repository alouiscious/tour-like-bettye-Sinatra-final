# require './config/environment'

class VenuesController < ApplicationController
  get '/' do
    redirect '/venues'
  end
  
  # renders a full list of tour dates
  get '/venues' do          
    if Helpers.current_user(session)
      @user = User.find(session[:user_id])
      @venues = Venue.visible
      # @tourdates = q   # venues.html and button routes to tourdates/edit
    binding.pry
    end                             # has links that reveal each venue details
    erb :'/venues/bettye_venues'    
  end

  # new venue
  get '/venues/new' do
    erb :"new.html"
  end

  # venue show route
  get 'venues/:id' do
    @venue = Venue.find(params[:id])
    @page_title = @venue.name
    erb :'/venues/show.html'
  end

  # create venue
  post "/venues/:id" do
    binding.pry

    @venue = Venue.create(name: params[:name], booking: params[:booking], box_office: params[:box_office], email: params[:email], phone: params[:phone], description: params[:description], website: params[:website], city: params[:city], state: params[:state])
    redirect "/venues/#{@venue.id}"
  end
  
  # post show route
  get 'venues/:id/edit' do
    @venue = Venue.find(params[:id])
    @page_title = "Edit #{@venue.name}"
    erb :'/venues/edit.html'
  end

  # edit show route
  patch 'venues/:id/edit' do
    @venue = Venue.find_by_id(params[:id])
    @page_title = "Edit #{@venue.name}"
    redirect "/venues" unless @venue
    if @venue.update(name: params[:name], booking: params[:booking], box_office: params[:box_office], email: params[:email], phone: params[:phone], description: params[:description], website: params[:website], city: params[:city], state: params[:state])
      redirect "/venues/#{@venue.id}"
    else
      @error = "Venue couldn't update: #{@venue.errors.full_message.to_sentence}"
      erb :'/venues/edit.html'
    end
  end

  delete '/venues/:id' do
    @venue = Post.find_by_id(params[:id])
    redirect "/venues" unless @venue
    @venue.update(deleted: true)
    redirect "/venues/#{@venue.id}"

  end


end