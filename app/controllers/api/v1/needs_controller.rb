class Api::V1::NeedsController < ApplicationController


def index
    
    needs = Need.all
    render json: needs, include: [:satisfiers]
end

def show 

    need = Need.find_by_id(params[:id])
    render json: need, include: [:satisfiers]
  
        # needs = User.first.satisfiers.map {|satisfier|  "#{satisfier.needs.name}"}
        # render json: needs

end




end
