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
    
    
  satisfier = User.first.satisfiers.new(satisfier_params)
    if satisfier.save
      render json: satisfier
    else 
      render json: {error: 'Error creating satisfer'}
    end

  # if satisfier.save
  #     render json: satisfier, status: created
  # else
  #     resp = {
  #         error: satisfier.errors.full_messages.to_sentence
  #     }
  #     render json: user.errors, status: :unprocessable_entity
  # end
end


private
def satisfier_params
    params.require(:satisfier).permit(:user_id, :activity, :value, needs_ids: [])
    #make sure the nexted attribute doesn't have to be the join table of ways

  end



end
