class PagesController < ApplicationController
  def index
    if user_signed_in? == false
      redirect_to landing_path
    else
      @q = Gig.ransack(params[:q])
      @gigs = @q.result
    end
  end
  
  def landing
  end
end
