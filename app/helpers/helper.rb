class Helpers

  def self.logged_in?(session)
    !!session[:user_id]
  end

  def self.current_user(session)
    @user ||= User.find(session[:user_id])
  end
  
  def self.redirect_if_not_logged_in(session)
    if !logged_in?(session)
      redirect to '/'
    end

  end
end