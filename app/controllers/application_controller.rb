class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    
  before_action :get_latest_article
  before_action :random 
  
    
    
  def get_latest_article
    @new =  Blog.order(created_at: :desc).limit(5)
  end
      
  def random
    @random = Blog.order("RANDOM()").limit(7)
  end
    
end
