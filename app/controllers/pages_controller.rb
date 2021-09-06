class PagesController < ApplicationController
  def home
    if user_signed_in? == false
      redirect_to landing_path
    end
  end
  
  def landing
  end
end
