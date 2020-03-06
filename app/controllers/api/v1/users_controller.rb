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
            session[:user_id] = user.id
            render json: user, status: created
        else
            resp = {
                error: user.errors.full_messages.to_sentence
            }
            render json: user.errors, status: :unprocessable_entity
        end
    end

    #wrap_parameters :user, include: [:name, username, :password]
private
def user_params
    params.require(:user).permit(:name, :username, :password)
  end


end
