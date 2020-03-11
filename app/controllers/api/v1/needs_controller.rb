class Api::V1::NeedsController < ApplicationController


def index
    
    needs = Need.all
    render json: needs, include: [:satisfiers]
end

def show 

        needs = User.first.satisfiers.map {|satisfier|  "#{satisfier.needs.name}"}
        render json: needs

# need = Need.all
# render json: need, include: [:satisfiers]
≈

    # else 
    #     render json: {
    #              error: "You must be logged in to see needs"   
    #             }

    # needs = Need.all 
    # render json: needs
end


end
