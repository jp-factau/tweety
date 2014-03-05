class WelcomeController < ApplicationController
  
  def index
    @messages = Message.all.limit(20).reverse
  end
    
end