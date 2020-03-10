class Api::V1::NeedsController < ApplicationController

def show 
        needs = User.first.satisfiers.map {|satisfier|  "#{satisfier.needs.name}"}
        render json: needs
    # else 
    #     render json: {
    #              error: "You must be logged in to see needs"   
    #             }

    # needs = Need.all 
    # render json: needs
end


end
