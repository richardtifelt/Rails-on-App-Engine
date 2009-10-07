class TweetsController < ApplicationController
  def index
    if session[:twitter_user].present?
      @tweets = Twitter.get_tweets(session[:twitter_user])
    else
      redirect_to twitter_login_path
    end
  end
  
  def login
    case request.method
    when :post
      session[:twitter_user] = params[:username]
      redirect_to tweet_list_path
    when :get
      session.delete(:twitter_user)
    end
  end
end