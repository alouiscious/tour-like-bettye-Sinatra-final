require './config/environment'

class SessionsController < ApplicationController
  
  get '/signup' do
    erb :'sessions/signup'
  end

  post '/signup' do
    @user = User.create(:username => params[:username], :password => params[:password], :email => params[:email], :phone => params[:phone], :bandname => params[:bandname], :first_name => params[:first_name], :last_name => params[:last_name], :fullname => params[:fullname], :nickname => params[:nickname], :zipcode => params[:zipcode])
    if @user.save
      redirect "/login" #ask about autologin
    else
      # redirect "/failure"
      erb :'/sessions/failure'
    end
  end

  get '/login' do
    @users = User.all
    erb :'/sessions/login'
  end
  
  post '/login' do
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:first_name] = user.first_name
      session[:last_logged_in_at] = DateTime.now
      redirect "/user"
    else
      redirect "/failure"
    end
  end

  get '/user' do
    # binding.pry
    if Helpers.logged_in?(session)
      @current_user = User.find_by_id(session[:user_id])
      erb :'/sessions/success'
    else
      redirect '/failure'
    end
  end

  get '/failure' do
    erb :'/sessions/failure'
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end