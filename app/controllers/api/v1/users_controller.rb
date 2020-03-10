class Api::V1::UsersController < ApplicationController

#     def index
#     end

#     def show
        

#         user_json = UserSerializer.new(@user).serialized_json
#         render json: user_json
 
#     end

    def create
        user = User.new(user_params)
        
        if user.save 
            #you user signs in, set session for that user_id equal to the user.id
            #otherwise, the front end things you'res signe din but the backend does not.
            session[:user_id] = user.id
            render json: user, status: created
        else
            
            resp = {
                error: user.errors.full_messages.to_sentence
            }
            render json: user.errors, status: :unprocessable_entity
        end

#           def create
#     user = User.first
#     card = Card.find_or_create_by(card_params)
#     user_card = user.user_cards.new(user_card_params)
#     user_card.card_id = card.id
#     user_card.save
#     render json: card
#   end
#     end

    #wrap_parameters :user, include: [:name, username, :password]
private
def user_params
    params.require(:user).permit(:name, :username, :pwd)
  end


end
