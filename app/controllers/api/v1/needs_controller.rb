class Api::V1::NeedsController < ApplicationController

def index 
    # if logged_in?
    #     needs = current_user.satisfiers.map {|satisfier|  "#{satisfier.need.name}"}
    #     render json: needs
    # else 
    #     render json: {
    #              error: "You must be logged in to see needs"   
    #             }

    needs = Need.all 
    render json: needs
end


end
