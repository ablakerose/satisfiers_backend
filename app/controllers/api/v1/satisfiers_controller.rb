class Api::V1::SatisfiersController < ApplicationController

def index
    
  satisfiers = User.first.satisfiers 
  render json: satisfiers, include: [:needs]
end

def show
    
  satisfier = Satisfier.find_by_id(params[:id])
  render json: satisfier

end

def create
user = User.first
#taking the array of needs from params and saving them to need_ids variable
  need_ids = satisfier_params[:need_ids]
  # create a satisfier associated to user
  # including need_ids in sats_params will also associate that sat to those needs
  user.satisfiers.create(satisfier_params)
  # becasue what we need to send back is an array of updated needs
  # find all of the needs that were just associated to the new satisfier
  needs = Need.find(need_ids)
  
   render json: needs, include: [:satisfiers]
end

def update
 
  satisfier = Satisfier.find_by(id: params[:id])
  satisfier.update(satisfier_params)
  render json: satisfier
   
end


def destroy
satisfier = Satisfier.find(params[:id])
satisfier.destroy

end





private
def satisfier_params
    params.require(:satisfier).permit(:user_id, :activity, :value, :need_ids => [])
  end


  def need_params
    params.require(:satisfier).permit(:need_ids => [])
 

  end

end
