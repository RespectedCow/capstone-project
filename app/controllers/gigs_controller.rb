class GigsController < ApplicationController
    before_action :set_gig, only: %i[ show edit update destroy ]
    def new 
        @gig = Gig.new
    end

    def edit
    end

    def index 
        @q = Gig.ransack(params[:q])
        @gigs = @q.result
    end

    def create 
        @gig = Gig.new(gig_params)
        @gig.user = current_user

        respond_to do |format|
            if @gig.save

                format.html { redirect_to @gig, notice: "Gig was successfully created." }
                format.json { render :show, status: :created, location: @gig }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @gig.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
          if @gig.update(gig_params)
            format.html { redirect_to @gig, notice: "Gig was successfully updated." }
            format.json { render :show, status: :ok, location: @gig }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @gig.errors, status: :unprocessable_entity }
          end
        end
    end

    def destroy
        @gig.destroy

        redirect_to root_path
    end
    
    def show 
    end

    private
    def set_gig
        @gig = Gig.find(params[:id])
    end

    def gig_params
      params.require(:gig).permit(:title, :description, :price, :username, :offoron, :gigtype, :maxtime, :timetype, :country, :state)
    end
end
