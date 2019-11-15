require './config/environment'

class ApplicationController < Sinatra::Base
 
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # set :views, Proc.new { File.join(root, "views") }
    # register Sinatra::Flash
    register Sinatra::ActiveRecordExtension
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') 
  end
  
  get '/' do
    erb :'/users/index'
  end
  private

    def self.logged_in?(session)
      !!session[:user_id]
    end
  
    def self.current_user(session)
      User.find(session[:user_id])
    end

    def self.redirect_if_not_logged_in(session)
      if !logged_in?(session)
        redirect to '/'
      end

    end
    
  
end
